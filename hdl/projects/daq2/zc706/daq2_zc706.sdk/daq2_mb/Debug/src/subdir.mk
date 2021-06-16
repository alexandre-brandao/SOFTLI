################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/ad9144.c \
../src/ad9523.c \
../src/ad9680.c \
../src/adc_core.c \
../src/dac_buffer.c \
../src/dac_core.c \
../src/dmac_core.c \
../src/fmcdaq2.c \
../src/jesd_core.c \
../src/platform.c \
../src/platform_drivers.c \
../src/xcvr_core.c \
../src/xilinx_qpll.c \
../src/xilinx_xcvr_channel.c 

OBJS += \
./src/ad9144.o \
./src/ad9523.o \
./src/ad9680.o \
./src/adc_core.o \
./src/dac_buffer.o \
./src/dac_core.o \
./src/dmac_core.o \
./src/fmcdaq2.o \
./src/jesd_core.o \
./src/platform.o \
./src/platform_drivers.o \
./src/xcvr_core.o \
./src/xilinx_qpll.o \
./src/xilinx_xcvr_channel.o 

C_DEPS += \
./src/ad9144.d \
./src/ad9523.d \
./src/ad9680.d \
./src/adc_core.d \
./src/dac_buffer.d \
./src/dac_core.d \
./src/dmac_core.d \
./src/fmcdaq2.d \
./src/jesd_core.d \
./src/platform.d \
./src/platform_drivers.d \
./src/xcvr_core.d \
./src/xilinx_qpll.d \
./src/xilinx_xcvr_channel.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../daq2_mb_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


