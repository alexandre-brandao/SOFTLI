"""********************************************************************************************************************
*Developed by @Alexandre - email: alexandre98@ua.pt
*
*This script is intended for the automatic configuration of the DAC/ADC_CONVERTING FREQUENCY of the internal modules of
*the FMCDAQ2 in combination with the ZC706 FPGA
*
*Edits the FMCDAQ2.C Script available from Analog Devices and edited by Alexandre Brandão
*
*********************************************************************************************************************"""
''' **************************************************************************************************************** '''
''' **** *** Check https://wiki.analog.com/resources/eval/user-guides/ad-fmcdaq2-ebz/clocking for reference *** **** '''
''' **************************************************************************************************************** '''

import os
import time
import os.path
import csv
import serial
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import style
import matplotlib as mpl

mpl.rcParams['lines.linewidth'] = 1
style.use('seaborn-bright')

def switch_case():
    switch_case = {
                "i": introduction,
                "s": SingleShot,
                "r": readSamplesFromMemory,
                "x": terminalCommand,
                "HG": hold_graph
                }
    return switch_case

def hold_graph(ser, param1 = 0, param2 = 0):
    print("Holding GRAPH for 10 seconds")
    plt.pause(10)
    return

def introduction(serial, param1 = 0, param2 = 0):
    print("Welcome to the FPGA Softli program.\n"\
          +"Developed by Alexandre Brandão\n"\
          +"Email: alexandre98@ua.pt\n" \
          +"OBS: Make sure to terminate the program before reprogramming the FPGA"
          )
    return


def readSamplesFromMemory(serial, param1 = 0, param2 = 0):
    if serial.inWaiting() > 0:
        serial.flushInput()
    serial.write(bytes("r", "utf-8"))

    count = 0
    values = []
    strValue = ''


    while(count < 2048):
        strValue = serial.readline().decode("utf-8").replace("\n", '').replace("\r", "")
        values = np.append(values, int(strValue))

        count = count + 1;

    print(values)

    return values

#Send the terminal signal
def terminalCommand(serial, param1 = 0, param2 = 0):

    # before writing anything, ensure there is nothing in the buffer
    if serial.inWaiting() > 0:
        serial.flushInput()
    serial.write(bytes("x", "utf-8"))

    return

#Send a burst signal
def SingleShot(serial, param1 = 0, param2 = 0):
    serial.write("s".encode("utf-8"))

    return


def openComPort(PORT="COM2", baudrate=115200):

    # Run the serial line
    ser = serial.Serial(
        baudrate=baudrate,             # Baudrate
        port=PORT,                     # Port NAME
        stopbits=serial.STOPBITS_ONE,  # 1 Stop bit
        parity=serial.PARITY_NONE,     # 0 Parity bits
        bytesize=serial.EIGHTBITS,     # 8 Data bits
    )

    # Open PORT
    # Note: In the future, there should an exception handler here to check the PORTS availability.
    ser.close()
    ser.open()

    ser.flushInput()
    return ser

def plot_graph(fig, ax, Y):
    ax.plot(range(0, len(Y)), Y)
    ax.set_ylabel("Amplitude")
    ax.set_xlabel("time[ns]")
    ax.set_title("Channel 1")
    print("---Plot graph finish---")
    fig.canvas.draw()
    plt.pause(0.1)

def writeTotxt(filename, Ch1_Samples) :

    with open(filename+".txt", "a") as f:

        for value in Ch1_Samples:
            f.write(str(value) + " , ")

        f.write("\n\n")
        f.close()

# Main section of the program
if __name__ == '__main__':
    #This command runs and compiles the application for the FPGA
    command = "C:\\Xilinx\\SDK\\2018.3\\bin\\xsct.bat -eval source C:/adi/SOFTLI_FPGA_RUN.tcl"
    os.system(command)

    # Open port COM2 with a baudrate of 115200
    ser = openComPort(PORT="COM2", baudrate=115200)

    time.sleep(8)  #8 Seconds for initial setup

    #Print port settings
    print("Port settings:\n")
    print(ser.get_settings())
    print()

    # Sample Collectors
    Ch1_Samples = []
    Ch2_Samples = []

    #Generate switch-case Python
    switch = switch_case()

    #Print the startup data
    print(ser.read(ser.inWaiting()).decode("utf-8")) #Print all data in the input buffer

    # PLOT SETTING
    """
    fig, ax = plt.subplots(1, 1)
    # draw and show it
    fig.canvas.draw()
    plt.show(block=False)
    """



    while(True):
        print("Press:\n"
              "\t i - Introduction message\n" 
              "\t s - Capture data\n"
              "\t r - Read data channels to CSV\n"
              "\tHG - Hold Graph\n"
              "\t x  - terminate program\n")

        # for visual purposes
        time.sleep(0.8)

        option = input("Option:")


        if option in switch.keys():

            print("Chosen option: " + option)
            function = switch.get(option, "NAN")
            Ch1_Samples= function(ser, 0, 0)

            if Ch1_Samples is None :
                continue
            else:
                print(Ch1_Samples[100:120])

            if(option == "r"):
                writeTotxt("Channel1", Ch1_Samples)
                #plot_graph(fig, ax, Ch1_Samples)

        else:
            print("Not a valid option")


