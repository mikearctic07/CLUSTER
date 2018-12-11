################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/FlexCAN.c" \
"../Sources/LPSPI.c" \
"../Sources/can.c" \
"../Sources/clocks_and_modes.c" \
"../Sources/main.c" \
"../Sources/rtos.c" \

C_SRCS += \
../Sources/FlexCAN.c \
../Sources/LPSPI.c \
../Sources/can.c \
../Sources/clocks_and_modes.c \
../Sources/main.c \
../Sources/rtos.c \

OBJS_OS_FORMAT += \
./Sources/FlexCAN.o \
./Sources/LPSPI.o \
./Sources/can.o \
./Sources/clocks_and_modes.o \
./Sources/main.o \
./Sources/rtos.o \

C_DEPS_QUOTED += \
"./Sources/FlexCAN.d" \
"./Sources/LPSPI.d" \
"./Sources/can.d" \
"./Sources/clocks_and_modes.d" \
"./Sources/main.d" \
"./Sources/rtos.d" \

OBJS += \
./Sources/FlexCAN.o \
./Sources/LPSPI.o \
./Sources/can.o \
./Sources/clocks_and_modes.o \
./Sources/main.o \
./Sources/rtos.o \

OBJS_QUOTED += \
"./Sources/FlexCAN.o" \
"./Sources/LPSPI.o" \
"./Sources/can.o" \
"./Sources/clocks_and_modes.o" \
"./Sources/main.o" \
"./Sources/rtos.o" \

C_DEPS += \
./Sources/FlexCAN.d \
./Sources/LPSPI.d \
./Sources/can.d \
./Sources/clocks_and_modes.d \
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

Sources/LPSPI.o: ../Sources/LPSPI.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/LPSPI.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/LPSPI.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/can.o: ../Sources/can.c
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/can.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/can.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/clocks_and_modes.o: ../Sources/clocks_and_modes.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/clocks_and_modes.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/clocks_and_modes.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/main.o: ../Sources/main.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/main.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/main.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/rtos.o: ../Sources/rtos.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: Standard S32DS C Compiler'
	arm-none-eabi-gcc "@Sources/rtos.args" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "Sources/rtos.o" "$<"
	@echo 'Finished building: $<'
	@echo ' '


