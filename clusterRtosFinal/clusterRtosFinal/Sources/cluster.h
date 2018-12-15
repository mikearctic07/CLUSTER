/*
 * cluster.h
 *
 *  Created on: 06/12/2018
 *      Author: azpei
 */

#ifndef CLUSTER_H_
#define CLUSTER_H_

#ifndef DEFINITIONS_H_
#include "definitions.h"
#endif

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

void CLUSTER_Display_Indicator_State(int indicator, int indicatorValue);

void CLUSTER_Display_Gas_Tank_Level(int *ptrTankLevelValue, int *ptrCount);

void CLUSTER_Display_Velocimeter_Value(int *ptrSpeedValue);

void CLUSTER_Display_Odometer_Value(int distanceValue, int tripDistanceValue, int *ptrLcdCharBox);

#endif /* CLUSTER_H_ */
