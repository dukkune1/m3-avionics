"""Place position packets into bins depending on itow value
Gregory Brooks 2017"""

from .toad_packets import *
from math import floor
from . import coords

class Ref_point:
    def __init__(self):
        self.e_coord = None   # m
        self.n_coord = None   # m
        self.u_coord = None   # m
        self.distance = None  # m
    def printout(self):
        print("e_coord: {}".format(self.e_coord))
        print("n_coord: {}".format(self.n_coord))
        print("u_coord: {}".format(self.u_coord))
        print("distance: {}".format(self.distance))

class Position_measurement:
    def __init__(self,itow_s):
        self.itow_s = itow_s  # GPS itow
        self.flags = 0
        self.full = False
        self.toads = []
        for count in range (0,NUM_TOADS):
            toad = Ref_point()
            self.toads.append(toad)  # List of toads, containing position and tof

    def set_dist(self,id,dist):
        self.toads[id].distance = dist
        # Set flags
        self.flags = self.flags | 2**(id)
        self.check_full()

    def set_pos(self,id,e,n,u):
        self.toads[id].e_coord = e
        self.toads[id].n_coord = n
        self.toads[id].u_coord = u

    def check_full(self):
        global last_known_e
        global last_known_n
        global last_known_u
        if self.flags == 2**NUM_TOADS - 1:
            self.full = True
            # Now populate ref point locations with last known position
            for count in range (0,NUM_TOADS):
                self.set_pos(count,last_known_e[count],last_known_n[count],last_known_u[count])

LIVE_MODE = False;  # Process packets in real time vs from a logfile
measurement_list = [] # newer bins -> higher index
if LIVE_MODE:
    MAX_BINS = 3  # Delete oldest unfilled bins once measurement_list gets too large
else:
    MAX_BINS = 1300  # Keep all bins, this must be large enough to fit all ranging packets
last_known_e = [None]*NUM_TOADS
last_known_n = [None]*NUM_TOADS
last_known_u = [None]*NUM_TOADS

def rtrn_bins():
    sorted_list = sorted(measurement_list, key=lambda Position_measurement: Position_measurement.itow_s)
    for entry in sorted_list:
        if not LIVE_MODE:
            # Quick hack to use hardcoded location for each toad
            enu_coords = []
            enu_coords.append(coords.convert_llh_to_ENU([40.8964654,-119.0718826,1167.119]))  # TOAD 1
            enu_coords.append(coords.convert_llh_to_ENU([40.8962634,-119.0821014,1164.45]))  # TOAD 2
            enu_coords.append(coords.convert_llh_to_ENU([40.8906223,-119.0878229,1167.833]))  # TOAD 3
            enu_coords.append(coords.convert_llh_to_ENU([40.872279,-119.0883343,1164.906]))  # TOAD 4
            enu_coords.append(coords.convert_llh_to_ENU([40.8756779,-119.075512,1167.008]))  # TOAD 5
            enu_coords.append(coords.convert_llh_to_ENU([40.8849028,-119.0798858,1164.795]))  # TOAD 6
            for id in range(0,NUM_TOADS):
                last_known_e[id] = enu_coords[id][0]
                last_known_n[id] = enu_coords[id][1]
                last_known_u[id] = enu_coords[id][2]

        # Populate ref point locations with last known position
        for count in range (0,NUM_TOADS):
            entry.set_pos(count,last_known_e[count],last_known_n[count],last_known_u[count])

    return sorted_list

def add_packet(packet):
    global measurement_list
    global MAX_BINS
    global last_known_e
    global last_known_n
    global last_known_u

    # Process new packet
    if packet.toad_id == TOAD_1:
        id = 0
    elif packet.toad_id == TOAD_2:
        id = 1
    elif packet.toad_id == TOAD_3:
        id = 2
    elif packet.toad_id == TOAD_4:
        id = 3
    elif packet.toad_id == TOAD_5:
        id = 4
    elif packet.toad_id == TOAD_6:
        id = 5

    if packet.log_type == MESSAGE_POSITION:
        # Update last known position
        enu_coords = coords.convert_llh_to_ENU([packet.lat,packet.lon,packet.height])
        last_known_e[id] = enu_coords[0]
        last_known_n[id] = enu_coords[1]
        last_known_u[id] = enu_coords[2]

    elif packet.log_type == MESSAGE_RANGING:
        itow_s = floor(packet.i_tow/1000)  # Second of the week the packet is timestamped with

        found_bin = MAX_BINS
        for index,Bin in enumerate(measurement_list):
            if Bin.itow_s == itow_s:
                # Place new packet into existing bin
                found_bin = index
                break
            else:
                # Need to create new bin
                found_bin = MAX_BINS  # i.e. not indexes 0 to NUM_TOADS-1

        if found_bin == MAX_BINS:
            # Create new bin
            new_bin = Position_measurement(itow_s)
            measurement_list.append(new_bin)
            found_bin = len(measurement_list) - 1

        # Put distance into found bin
        measurement_list[found_bin].set_dist(id,packet.dist())

        if LIVE_MODE:
            # Check for full bin to return
            for index,Bin in enumerate(measurement_list):
                if Bin.full:
                    full_bin = index
                    break
                else:
                    full_bin = len(measurement_list)

            if full_bin != len(measurement_list):

                rtrn_val = measurement_list[full_bin]
                ## TODO: Log unfilled bins that are older than returned bin

                # Then delete the older bins
                del measurement_list[0:full_bin+1]
                return rtrn_val
            else:
                # If measurement_list is too large, delete oldest unfilled bin
                end = len(measurement_list)
                if end > MAX_BINS:
                    # Return the bin if it has at least 3 range measurements
                    rtrn_val = None
                    if bin(measurement_list[0].flags).count("1") >= 3:
                        rtrn_val = measurement_list[0]
                    del measurement_list[0:end-MAX_BINS]
                    return rtrn_val
