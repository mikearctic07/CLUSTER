################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/FlexCAN.c" \
"../Sources/LCD_DOS.c" \
"../Sources/LPSPI.c" \
"../Sources/can.c" \
"../Sources/clock.c" \
"../Sources/cluster.c" \
"../Sources/eeeprom.c" \
"../Sources/gpio.c" \
"../Sources/main.c" \
"../Sources/rtos.c" \

C_SRCS += \
../Sources/FlexCAN.c \
../Sources/LCD_DOS.c \
../Sources/LPSPI.c \
../Sources/can.c \
../Sources/clock.c \
../Sources/cluster.c \
../Sources/eeeprom.c \
../Sources/gpio.c \
../Sources/main.c \
../Sources/rtos.c \

OBJS_OS_FORMAT += \
./Sources/FlexCAN.o \
./Sources/LCD_DOS.o \
./Sources/LPSPI.o \
./Sources/can.o \
./Sources/clock.o \
./Sources/cluster.o \
./Sources/eeeprom.o \
./Sources/gpio.o \
./Sources/main.o \
./Sources/rtos.o \

C_DEPS_QUOTED += \
"./Sources/FlexCAN.d" \
"./Sources/LCD_DOS.d" \
"./Sources/LPSPI.d" \
"./Sources/can.d" \
"./Sources/clock.d" \
"./Sources/cluster.d" \
"./Sources/eeeprom.d" \
"./Sources/gpio.d" \
"./Sources/main.d" \
"./Sources/rtos.d" \

OBJS += \
./Sources/FlexCAN.o \
./Sources/LCD_DOS.o \
./Sources/LPSPI.o \
./Sources/can.o \
./Sources/clock.o \
./Sources/cluster.o \
./Sources/eeeprom.o \
./Sources/gpio.o \
./Sources/main.o \
./Sources/rtos.o \

OBJS_QUOTED += \
"./Sources/FlexCAN.o" \
"./Sources/LCD_DOS.o" \
"./Sources/LPSPI.o" \
"./Sources/can.o" \
"./Sources/clock.o" \
"./Sources/cluster.o" \
"./Sources/eeeprom.o" \
"./Sources/gpio.o" \
"./Sources/main.o" \
"./Sources/rtos.o" \

C_DEPS += \
./Sources/FlexCAN.d \
./Sources/LCD_DOS.d \
./Sources/LPSPI.d \
./Sources/can.d \
./Sources/clock.d \
./Sources/cluster.d \
./Sources/eeeprom.d \
./Sources/gpio.d \
./Sources/main.d \
./Sources/rtos.d \


# Each subdirectory must supply rules for building sources it contributes
Sources/FlexCAN.o: ../Sources/FlexCAN.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/FlexCAN.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/FlexCAN.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/LCD_DOS.o: ../Sources/LCD_DOS.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/LCD_DOS.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/LCD_DOS.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/LPSPI.o: ../Sources/LPSPI.c
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/LPSPI.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/LPSPI.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/can.o: ../Sources/can.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/can.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/can.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/clock.o: ../Sources/clock.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/clock.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/clock.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/cluster.o: ../Sources/cluster.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/cluster.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/cluster.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/eeeprom.o: ../Sources/eeeprom.c
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/eeeprom.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/eeeprom.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/gpio.o: ../Sources/gpio.c
	@echo 'Building file: $<'
	@echo 'Executing target #27 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/gpio.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/gpio.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/main.o: ../Sources/main.c
	@echo 'Building file: $<'
	@echo 'Executing target #28 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/main.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/main.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/rtos.o: ../Sources/rtos.c
	@echo 'Building file: $<'
	@echo 'Executing target #29 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/rtos.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/rtos.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


