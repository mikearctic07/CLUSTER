/*
 * definitions.h
 *
 *  Created on: 06/12/2018
 *      Author: azpei
 */

#ifndef DEFINITIONS_H_
#define DEFINITIONS_H_

/* Ports */
#define PRT_A                      'A'
#define PRT_B                      'B'
#define PRT_C                      'C'
#define PRT_D                      'D'
#define PRT_E                      'E'

/* Pin number */
#define PIN_0                       0
#define PIN_1                       1
#define PIN_2                       2
#define PIN_3                       3
#define PIN_4                       4
#define PIN_5                       5
#define PIN_6                       6
#define PIN_7                       7
#define PIN_8                       8
#define PIN_9                       9
#define PIN_10                     10
#define PIN_11                     11
#define PIN_12                     12
#define PIN_13                     13
#define PIN_14                     14
#define PIN_15                     15
#define PIN_16                     16
#define PIN_17                     17

/* Outputs */
#define INDICATOR_DOOR              1
#define INDICATOR_SEAT_BELT         2
#define INDICATOR_GAS               3
#define INDICATOR_HIGH_BEAMS        4
#define INDICATOR_BREAK             5

#define GAS_TANK_LVL_0              6
#define GAS_TANK_LVL_1              7
#define GAS_TANK_LVL_2              8
#define GAS_TANK_LVL_3              9
#define GAS_TANK_LVL_4             10

#define VELOCIMETER_TENS_D0    11
#define VELOCIMETER_TENS_D1    12
#define VELOCIMETER_TENS_D2    13
#define VELOCIMETER_TENS_D3    14
#define VELOCIMETER_UNITS_D0       15
#define VELOCIMETER_UNITS_D1       16
#define VELOCIMETER_UNITS_D2       17
#define VELOCIMETER_UNITS_D3       18
#define VELOCIMETER_HUNDREDS_D0        19
#define VELOCIMETER_HUNDREDS_D1        20
#define VELOCIMETER_HUNDREDS_D2        21
#define VELOCIMETER_HUNDREDS_D3        22

#define ODOMETER_LCD_RS            23
#define ODOMETER_LCD_RW            24
#define ODOMETER_LCD_EN            25
#define ODOMETER_LCD_D4            26
#define ODOMETER_LCD_D5            27
#define ODOMETER_LCD_D6            28
#define ODOMETER_LCD_D7            29

/* Inputs */
#define IGNITION_BUTTON            31
#define RESET_TRIP_ODOMETER        32
#define MILLES_OR_KILOMETERS       34

#define IGNITION_STATE             33


/* Indicator States */
#define ON                          0
#define OFF                         1

/* Gas Tank Levels */
#define FULL_GAS_TANK_LEVEL                                  555
#define GAS_TANK_LEVEL_3_4          ((FULL_GAS_TANK_LEVEL*3)>>2)
#define GAS_TANK_LEVEL_1_2              (FULL_GAS_TANK_LEVEL>>1)
#define GAS_TANK_LEVEL_1_4              (FULL_GAS_TANK_LEVEL>>2)
#define GAS_TANK_LEVEL_1_8              (FULL_GAS_TANK_LEVEL>>3)
#define EMPTY_GAS_TANK_LEVEL                                   0

/* LCD */
#define LCD_DATA_BUS_PORT       PTD->PDOR
#define LCD_CONTROL_BUS_PORT    PTB->PDOR

#define LCD_DATA_BUS_DIRN_REG   PTD->PDDR
#define LCD_CTRL_BUS_DIRN_REG   PTB->PDDR

#define LCD_D4     1
#define LCD_D5     2
#define LCD_D6     8
#define LCD_D7     9

#define LCD_RS     2
#define LCD_RW     3
#define LCD_EN     4

#define LCD_CTRL_BUS_MASK   ((1<<LCD_RS)|(1<<LCD_RW)|(1<<LCD_EN))
#define LCD_DATA_BUS_MASK   ((1<<LCD_D4)|(1<<LCD_D5)|(1<<LCD_D6)|(1<<LCD_D7))


#endif /* DEFINITIONS_H_ */
