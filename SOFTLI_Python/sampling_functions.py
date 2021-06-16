"""This function prints all the possible sampling in MHz and expects a user input"""
def print_sampling_rates (chosen_sample_rate, sampling_rate, conf_values):
    # Display Available sampling rates
    for i in range(0, len(sampling_rate)):

        if i % 6 == 0:
            print()
        print('[' + str(i + 1) + ']' + str(int(sampling_rate[i] / 1000000)) + 'MHz', end='\t')

    print()
    # Wait for user input
    while (True):
        try:
            value = input("Option:")
            if int(value) < 0 or int(value) > len(sampling_rate):
                raise ValueError
            break
        except ValueError:
            print("The option introduced is not a valid option")

    # Obtain the configuration values
    (MASTER_CLOCK_DIVISON_SETTING, N) = str(conf_values[int(value) - 1]).split(' ')

    chosen_sample_rate.append(sampling_rate[int(value)-1])
    return (MASTER_CLOCK_DIVISON_SETTING, N)

"""This function retrieves remainding samples rates for the ADC, configurations bits and sampling rates in a list form"""
def retrieve_adc_sampling_rates(MASTER_CLOCK_DIVIDER_SETTING, sampling_rate_list, conf_list):
    new_list_samp = []
    new_conf_list = []
    for i in range(0, len(sampling_rate_list)):
        (MCdivider_setting, DISCARD_VAR) = str(conf_list[i]).split(' ')
        if int(MCdivider_setting) == int(MASTER_CLOCK_DIVIDER_SETTING) :
            new_conf_list.append(conf_list[i])
            new_list_samp.append(sampling_rate_list[i])

    return (new_conf_list, new_list_samp)

"""This function receives a dictionary of all the sampling rates available and removes all duplicates"""
def remove_dict_duplicates(dict):

    # Convert Dictionary Key section to a list
    keylist = list()
    for (key, value) in dict.items():
        keylist.append(key)

    for i in range(0, len(keylist)):
        for j in range(i+1, len(keylist)):

            if keylist[i] in dict.keys() and keylist[j] in dict.keys():
                if dict[keylist[i]] == dict[keylist[j]]:
                    del dict[keylist[j]]

""" Calculates all the possible combinations and return a new dictionary without duplicates"""
def sampling_combination(dict):
    for MASTER_CLOCK_DIVISON_SET in range(3, 5 + 1):
        for N in range(1, 7 + 1):
            dict[str(MASTER_CLOCK_DIVISON_SET)+ ' '+ str(N)] = (3000000000 / (MASTER_CLOCK_DIVISON_SET * N))

    remove_dict_duplicates(dict)


