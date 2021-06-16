import copy
import serial
from support_functions import *
import matplotlib.pyplot as plt

def userinput(value):
    # Wait for user input
    while (True):
        try:
            value = input("Option:")
            if len(value) > 0:
                raise ValueError
            break
        except ValueError:
            print("The option introduced is not a valid option")
def cyclic_string(word, byte = '') :
    nbytes= len(word)
    word = list(word)
    wordcopy = copy(word)

    for i in range(0, nbytes-1):
        word[i] = wordcopy[i+1]

    word[nbytes-1] = byte

    return ''.join(word)

def openComPort(PORT = "COM2", baudrate = 115200):
    # Run the serial line
    ser = serial.Serial()
    ser.baudrate = baudrate
    ser.port = PORT


    # Open PORT
    # Note: In the future, there should an exception handler here to check the PORTS availability.
    ser.open()

    return ser

def thread_read_console(thread_name, Samples_size, values, ser) :

    print(thread_name)

    START_CODE = "ST1"

    # Inform the system it is dual_channel
    dual_channel = 1;

    WORD = "___"
    number = "______"

    printing = 1
    count = 0

    NoOfSamples = Samples_size

    while True:
        bytesform_received_message = ser.read(1)

        if printing == 1:
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

                # Reset number placement
                number = "_____"

                count = count + 1

        if count == (NoOfSamples / 2):
            break

    # Create figure for plotting
    fig = plt.figure()
    plt.plot(values)
    plt.title("Channel 1")
    plt.xlabel("Time [ns]")
    plt.ylabel("Amplitude[14bit resolution]")
    plt.show()


def thread_write_console(thread_name, ser):
    # Wait for user input
    print(thread_name, end='')
    while True:
        try:
            value = input('')
            if int(value) < 0 or int(value) < 6:
                raise ValueError
            break
        except ValueError:
            print("The option introduced is not a valid option")

    ser.write(bytes(value, "utf-8"))
