/*
 * Charge controller and balancer
 * Cambridge University Spaceflight
 */

#include "hal.h"
#include "config.h"
#include "error.h"
#include "m3can.h"
#include "m3status.h"
#include "chargecontroller.h"

#include "bq40z60.h"

BQ40Z60 charger;

void ChargeController_init(void) {
  m3status_set_init(M3STATUS_COMPONENT_CHARGER);

  if(bq40z60_init(&charger, &I2C_DRIVER, 0x0B) == ERR_OK){
    m3status_set_ok(M3STATUS_COMPONENT_CHARGER);
  }else{
    m3status_set_error(M3STATUS_COMPONENT_CHARGER, M3STATUS_CHARGER_ERROR_INIT);
  }
}

void ChargeController_enable_charger(void) {
  if(bq40z60_set_charger_enabled(&charger, TRUE)!=ERR_OK){
      m3status_set_error(M3STATUS_COMPONENT_CHARGER, M3STATUS_CHARGER_ERROR_READ);
  }
}
void ChargeController_disable_charger(void) {
  if(bq40z60_set_charger_enabled(&charger, FALSE)!=ERR_OK){
      m3status_set_error(M3STATUS_COMPONENT_CHARGER, M3STATUS_CHARGER_ERROR_READ);
  }
}

bool ChargeController_is_charger_enabled(void){
    uint8_t enabled = 0;
    if(bq40z60_is_charger_enabled(&charger, &enabled)!=ERR_OK){
        m3status_set_error(M3STATUS_COMPONENT_CHARGER, M3STATUS_CHARGER_ERROR_READ);
    }
    return enabled != 0;
}

bool ChargeController_is_charging(void){
  bool status = false;
  if(bq40z60_is_discharging(&charger, &status) != ERR_OK){
    return false;
  }
  return !status;
}

THD_FUNCTION(chargecontroller_thread, arg) {
  (void)arg;
  chRegSetThreadName("Charge Monitor");

  msg_t status = 0;
  uint8_t can_data[8];
  bool anyerrors = false;

  while (!chThdShouldTerminateX()) {
    anyerrors = false;

    // Measure battery voltages
    float batt1 = 0;
    float batt2 = 0;

    status = bq40z60_get_cell_voltages(&charger, &batt1, &batt2);
    if(status == ERR_OK){
      // report voltages in multiples of 0.02v
      can_data[0] = (uint8_t) ((batt1 * 100) / 2);
      can_data[1] = (uint8_t) ((batt2 * 100) / 2);

      m3can_send(CAN_MSG_ID_M3PSU_BATT_VOLTAGES, false, can_data, 2);
    }else{
      anyerrors = true;
    }

    chThdSleepMilliseconds(1);

    // Read Time-to-Empty at current rate of discharge
    uint16_t mins = 0;
    status = bq40z60_get_run_time_to_empty(&charger, &mins);
    if(status == ERR_OK){
      can_data[0] = mins & 0xff;
      can_data[1] = (mins >> 8) & 0xff;
    }else{
      can_data[0] = -1;
      can_data[1] = -1;
      anyerrors = true;
    }

    // Read Relative State-of-Charge (capacity remaining)
    uint8_t percent = 0;
    status = bq40z60_get_rsoc(&charger, &percent);
    if(status == ERR_OK){
      can_data[2] = percent & 0xff;
    }else{
      can_data[2] = -1;
      anyerrors = true;
    }

    can_send(CAN_MSG_ID_M3PSU_CAPACITY, false, can_data, 3);

    // Poll total system current
    int16_t ma = 0;
    status = bq40z60_get_current(&charger, &ma);
    if(status == ERR_OK){
      can_data[0] = ma & 0xff;
      can_data[1] = (ma >> 8) & 0xff;
    }else{
      anyerrors = true;
      can_data[0] = -1;
      can_data[1] = -1;
    }

    // Read chip temperature
    uint16_t temp_cK = 0;
    status = bq40z60_get_temperature(&charger, &temp_cK);
    if(status == ERR_OK){
      can_data[3] = temp_cK & 0xff;
      can_data[4] = (temp_cK >> 8) & 0xff;
    }else{
      can_data[3] = -1;
      can_data[4] = -1;
      anyerrors = true;
    }

    // Read some status bits
    uint16_t chgstatus = 0;
    status = bq40z60_get_charging_status(&charger, &chgstatus);
    uint8_t charge_voltage_mode = 4;
    uint8_t charge_inhibit = 0;
    if(status == ERR_OK){
      switch(chgstatus & 0x7){
        case 1: charge_voltage_mode = 0; break;
        case 2: charge_voltage_mode = 1; break;
        case 4: charge_voltage_mode = 2; break;
        case 8: charge_voltage_mode = 3; break;
      }
      if((chgstatus & (1 << 4)) != 0){
        charge_inhibit = 1;
      }
    }else{
      anyerrors = true;
    }
    can_data[2] = (charge_voltage_mode << 3) |
                  (charge_inhibit << 2) |
                  ((ChargeController_is_charging() ? 1 : 0) << 1) |
                  (ChargeController_is_charger_enabled() ? 1 : 0);
    m3can_send(CAN_MSG_ID_M3PSU_CHARGER_STATUS, false, can_data, 5);

    if(anyerrors){
      m3status_set_error(M3STATUS_COMPONENT_CHARGER, M3STATUS_CHARGER_ERROR_READ);
    }else{
      m3status_set_ok(M3STATUS_COMPONENT_CHARGER);
    }

    chThdSleepMilliseconds(100);
  }
}