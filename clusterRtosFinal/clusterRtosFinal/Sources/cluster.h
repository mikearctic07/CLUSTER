/*
 * cluster.h
 *
 *  Created on: 06/12/2018
 *      Author: azpei
 */

#ifndef CLUSTER_H_
#define CLUSTER_H_

#include "S32K144.h"
#include "Cpu.h"
#include "clockMan1.h"
#include "pin_mux.h"
#include "FreeRTOS.h"
#include "stdint.h"
#include "stdbool.h"
#include "definitions.h"

#ifndef CLOCK_H_
#include "clock.h"
#endif /* CLOCK_H_ */

#ifndef GPIO_H_
#include "gpio.h"
#endif /* GPIO_H_ */

#ifndef LCD_DOS_H
#include "LCD_DOS.h"
#endif /* LCD_DOS_H */

#ifndef CAN_H
#include "can.h"
#endif /* CAN_H */

#ifndef EEEPROM_H
#include "eeeprom.h"
#endif /* EEEPROM_H */

void CLUSTER_Initialize(void);

void CLUSTER_Display_Indicator_State(uint8_t indicator, uint8_t indicatorValue);

void CLUSTER_Display_Gas_Tank_Level(uint16_t tankLevelValue, uint8_t *ptrCount);

void CLUSTER_Display_Velocimeter_Value(uint16_t velocimeterValue);

void CLUSTER_Display_Odometer_Value(uint32_t distanceValue, uint32_t tripDistanceValue, uint8_t *ptrLcdCharBox);

void CLUSTER_Display_Odometer_Value_Error(uint8_t *ptrLcdCharBox);

#endif /* CLUSTER_H_ */
