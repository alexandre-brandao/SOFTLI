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
import threading


# The file line at which editing takes place
START_LINE_EDIT = 95
PATH_WAY = "../hdl/projects/daq2/zc706/daq2_zc706.sdk/DAQ2_HW_MOD/src/fmcdaq2.c"
START_CODE = "ST1"

# Main section of the program
if __name__ == '__main__':

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
    file.close()
    SDK_script.close()

    #Open port COM2 with a baudrate of 115200
    ser = openComPort(PORT="COM2", baudrate=115200)

    SamplesSize = 32768
    values = []
    write = threading.Thread(target=thread_read_console, args=('READ CONSOLE', SamplesSize, values, ser))
    read = threading.Thread(target=thread_write_console, args=('WRITE CONSOLE', ser))

    write.start()
    read.start()

    while len(values) < (SamplesSize/2):
        print(len(values))


    read.join()
    write.join()

    print("Thread execution complete")

    #Close the serial line
    ser.close()
