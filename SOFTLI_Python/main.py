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

from sampling_functions import *
from support_functions import *
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import serial

# The file line at which editing takes place
START_LINE_EDIT = 95
PATH_WAY = "../hdl/projects/daq2/zc706/daq2_zc706.sdk/DAQ2_HW_MOD/src/fmcdaq2.c"
START_CODE = "ST1"

# Main section of the program
if __name__ == '__main__':
    """
    chosen_sample_rate = []

    SDK_script = open(PATH_WAY, 'r')
    # SDK_script = open('../no-OS/fmcdaq2/zc706/sw/src/fmcdaq2.c', 'r')
    # SDK_script = open('fmcdaq2.c', 'r')
    script_lines = SDK_script.readlines()

    # Create sample rates dictionary
    samp_rate = dict()

    # Add sample rates to dictionary
    sampling_combination(samp_rate)

    # Sort dictionary
    samp_rate =  {k: v for k, v in sorted(samp_rate.items(), key=lambda item: item[1], reverse = True)}

    # Create 2 lists
    # Configuration options for the registers list and the Sampling rate
    sampling_rate = list(samp_rate.values())
    conf_values = list(samp_rate.keys())

    print("Welcome to FMCDAQ2 sampling rate configuration\nAvailable sampling rate for DAC[Choose option]:")
    # Print and retrieve
    (MASTER_CLOCK_DIVISON_SETTING, NDAC) = print_sampling_rates(chosen_sample_rate, sampling_rate, conf_values)

    DAC_JESD204_LANE_RATE_KHZ = ((10 * 3000000) / (int(MASTER_CLOCK_DIVISON_SETTING) * int(NDAC)))
    DAC_REF_RATE_kbps = (DAC_JESD204_LANE_RATE_KHZ / 20)

    (conf_values, sampling_rate) = retrieve_adc_sampling_rates(MASTER_CLOCK_DIVISON_SETTING, sampling_rate, conf_values)
    # Print and retrieve
    (MASTER_CLOCK_DIVISON_SETTING, NADC) = print_sampling_rates(chosen_sample_rate, sampling_rate, conf_values)

    ADC_JESD204_LANE_RATE_KHZ = ((10 * 3000000) / (int(MASTER_CLOCK_DIVISON_SETTING) * int(NDAC)))
    ADC_REF_RATE_kbps = (ADC_JESD204_LANE_RATE_KHZ/20)

    # Computing NDAC_SYSREF DIVISON SETTING
    if int(NDAC) == 1 :
        NDAC_SYSREF = 32 * 4
    else:
        NDAC_SYSREF = 32 * (4 + pow(2,int(NDAC)))
        if (NDAC_SYSREF > 512):
            NDAC_SYSREF = 512

    # Computing NADC_SYSREF DIVISON SETTING
    if int(NADC) == 1:
        NADC_SYSREF = 32 * 4
    else:
        NADC_SYSREF = 32 * (4 + pow(2, int(NADC)))
        if(NADC_SYSREF > 512):
            NADC_SYSREF = 512
    #
    # Substitute file lines
    script_lines[START_LINE_EDIT-1] = "#define MASTER_CLOCK_DIVISON 	" + MASTER_CLOCK_DIVISON_SETTING + "					// 3GHz divided by 3/4/5\n"
    script_lines[START_LINE_EDIT+0] = "#define NDAC				 	" + NDAC + "					// Divison setting for DAC MASTER_CLOCK / NDAC\n"
    script_lines[START_LINE_EDIT+1] = "#define NADC				 	" + NADC + "					// Divison setting for ADC MASTER_CLOCK / NDAC\n"
    script_lines[START_LINE_EDIT+2] = "#define NDAC_SYSREF 		 	" + str(NDAC_SYSREF) + "\t\t			// Divison setting for ADC synchronization /latency detection, integer of 32 {32, 64, 128, 256,...}\n"
    script_lines[START_LINE_EDIT+3] = "#define NADC_SYSREF 		 	" + str(NADC_SYSREF) + "\t\t			// Divison setting for ADC synchronization /latency detection, integer of 32 {32, 64, 128, 256,...}\n"
    script_lines[START_LINE_EDIT+4] = "#define DAC_JESD204_LANE_RATE_KHZ\t"    + str(int(DAC_JESD204_LANE_RATE_KHZ))+"\n"
    script_lines[START_LINE_EDIT+5] = "#define ADC_JESD204_LANE_RATE_KHZ\t"    + str(int(ADC_JESD204_LANE_RATE_KHZ))+"\n"
    script_lines[START_LINE_EDIT+6] = "#define DAC_REF_RATE_kbps\t" + str(int(DAC_REF_RATE_kbps)) + "\n"
    script_lines[START_LINE_EDIT+7] = "#define ADC_REF_RATE_kbps\t" + str(int(ADC_REF_RATE_kbps)) + "\n"
    script_lines[START_LINE_EDIT+28-1]= "\t"+ r"printf ("+"\""+r"\t6 - ADC "+str(int(chosen_sample_rate[0]/1000000)).rjust(4) +\
                                        " MSPS; DAC "+str(int(chosen_sample_rate[1]/1000000)).rjust(4)+" MSPS"+r"\n"+"\""+");\n"

    # Write file lines
    with open(PATH_WAY, 'w') as file:
        file.writelines(script_lines)

    print("Running ADC at " + str(int(chosen_sample_rate[0]/1000000)) + "MSPS and DAC at " + str(int(chosen_sample_rate[1]/1000000)) + "MSPS")

    print("Running ADC at " + str(int(chosen_sample_rate[0] / 1000000)) + "MSPS and DAC at " + str(int(chosen_sample_rate[1] / 1000000)) + "MSPS")
    file.close()
    SDK_script.close()
"""
    # Run the serial line
    ser = serial.Serial()
    ser.baudrate = 115200
    ser.port = 'COM2'

    # Open COM2 PORT
    # Note: In the future, there should an exception handler here to check the PORTS availability.
    ser.open()

    #Inform the system it is dual_channel
    dual_channel = 1;

    WORD = "___"
    number = "______"

    WritePoint = "_____________________________"
    printing = 1
    count = 0
    values = []
    NoOfSamples = 32768

    while True:
        bytesform_received_message = ser.read(1)

        if printing == 1 :
            print(bytesform_received_message.decode("utf-8"), end='')

        WORD = cyclic_string(WORD, bytesform_received_message.decode("utf-8"))



        # Start code serves to stop printing and start registering the values obtained
        if START_CODE == WORD:
            printing = 0

        number = cyclic_string(number, bytesform_received_message.decode("utf-8"))

        if printing == 0:
            if number[0].isdigit() or number[0] == "-":
                print("Line:" + str(count) + " : " + number)
                values.append(int(number, base=10))


                #Reset number placement
                number = "_____"

                count = count + 1

        if count == (NoOfSamples/2):
            break


    # Create figure for plotting
    fig = plt.figure()
    plt.plot(values)
    plt.title("Channel 1")
    plt.xlabel("Time [ns]")
    plt.ylabel("Amplitude[14bit resolution]")
    plt.show()

    #Close the serial line
    ser.close()






