"""Handle incoming serial data (logging and parsing).
Gregory Brooks, Matt Coates 2017
"""
import serial
from multiprocessing import Pipe
import sys
import struct
from .toad_packets import *
import time

TEST = False
test_counter = 1

# Get TOAD ID from range/position packet
def get_toad_id_from_type(packet_type):

    if((packet_type & TOAD_1) == TOAD_1):
        #print("Generated by TOAD 1")
        return TOAD_1

    if((packet_type & TOAD_2) == TOAD_2):
        #print("Generated by TOAD 2")
        return TOAD_2

    if((packet_type & TOAD_3) == TOAD_3):
        #print("Generated by TOAD 3")
        return TOAD_3

    if((packet_type & TOAD_4) == TOAD_4):
        #print("Generated by TOAD 4")
        return TOAD_4

    if((packet_type & TOAD_5) == TOAD_5):
        #print("Generated by TOAD 5")
        return TOAD_5

    if((packet_type & TOAD_6) == TOAD_6):
        #print("Generated by TOAD 6")
        return TOAD_6

def run(gui_pipe, log_pipe, gui_exit):
    """
    Args:

    Returns:

    Raises:
    """
    global TEST
    global test_counter

    # Open Serial Port
    if not TEST:
        ser = serial.Serial(sys.argv[1])
    while not gui_exit.is_set():

        if gui_pipe.poll() and not TEST:
            cmd = gui_pipe.recv()
            if isinstance(cmd,Usb_command):
                if cmd.conn and not ser.is_open():
                    # Connect
                    ser.open()
                elif not cmd.conn and ser.is_open():
                    # Disconnect
                    ser.close()

        if not TEST:
            # Read in a Log
            if ser.in_waiting>=128:
                data = ser.read(128)

                # Get Message Log Type
                log_type = struct.unpack('<B', data[0:1])
                log_type = log_type[0]

                # Handle PVT Message
                if (log_type == MESSAGE_PVT):
                    pvt_message = Pvt_packet(data)
                    gui_pipe.send(pvt_message)

                # Handle PSU Message
                if (log_type == MESSAGE_PSU):
                    psu_message = Psu_packet(data)
                    gui_pipe.send(psu_message)

                # Handle Ranging Packet
                if (log_type == MESSAGE_RANGING):
                    ranging_message = Ranging_packet(data)
                    gui_pipe.send(ranging_message)

                # Handle Position Packet
                if (log_type == MESSAGE_POSITION):
                    pos_message = Position_packet(data)
                    gui_pipe.send(pos_message)

                # Handle SR Traffic - RX Packet Logged
                if (log_type == MESSAGE_RX_PACKET):
                    ##### Uncomment to print things  #####
                    # Get Message Metadata
                    # meta_data = struct.unpack('<BI', data[1:6])
                    #toad_id = meta_data[1]
                    # systick = meta_data[2]
                    #systick /= 10000.0

                    #print("SR TRAFFIC [RX Packet]:")
                    #print("TOAD ID = ", toad_id)
                    #print("Timestamp = ", systick, " s")
                    #######################################
                    rx_type = data[6]

                    buf = b''

                    # Handle Packet Types
                    if ((rx_type & RANGE_PACKET) == RANGE_PACKET):
                        buf += bytes([MESSAGE_RANGING])  # Message type
                        buf += bytes([get_toad_id_from_type(rx_type)])  # ID of origin
                        buf += data[2:6]   # systicks

                        buf += data[6:17]  # payload
                        sr_ranging_message = Ranging_packet(buf)
                        gui_pipe.send(sr_ranging_message)

                    if ((rx_type & POSITION_PACKET) == POSITION_PACKET):
                        buf += bytes([MESSAGE_POSITION])
                        buf += bytes([get_toad_id_from_type(rx_type)])
                        buf += data[2:6]

                        buf += data[6:22]  # payload
                        sr_pos_message = Position_packet(buf)
                        gui_pipe.send(sr_pos_message)

                #log raw serial data to file
        elif TEST:
            # Test code
            from .coords import convert_ENU_to_llh
            from random import randint
            E = [0, 1000, 1500, 1000, 0, -500]  # enu in m
            N = [0, 0, -(3**0.5)*500, -(3**0.5)*1000,  -(3**0.5)*1000,  -(3**0.5)*500]  # enu in m
            for id in range(1,7):
                ranging_msg = Ranging_packet()
                ranging_msg.log_type = MESSAGE_RANGING
                ranging_msg.toad_id = 2**(id-1)
                ranging_msg.systick = ranging_msg.systick_freq*test_counter
                ranging_msg.timestamp = test_counter
                ranging_msg.tof = (randint(0,100)+5000) * 84000000 / 299792458
                ranging_msg.i_tow = test_counter * 1000
                ranging_msg.batt_v = 4
                ranging_msg.mcu_temp = 40


                pos_msg = Position_packet()
                pos_msg.log_type = MESSAGE_POSITION
                pos_msg.toad_id = 2**(id-1)
                pos_msg.systick = pos_msg.systick_freq*test_counter
                pos_msg.timestamp = test_counter

                latlng = convert_ENU_to_llh([E[id-1],N[id-1],0])
                pos_msg.lon = latlng[1]
                pos_msg.lat = latlng[0]
                pos_msg.height = latlng[2]
                pos_msg.num_sat = 10
                pos_msg.batt_v = 4
                pos_msg.mcu_temp = 40


                gui_pipe.send(ranging_msg)
                gui_pipe.send(pos_msg)


            test_counter = test_counter + 1
            time.sleep(1)
            if test_counter >= 3600:
                test_counter = 1
        else:
            time.sleep(0.05)
