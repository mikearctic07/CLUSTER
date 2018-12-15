/*
 * eeeprom.h
 *
 *  Created on: 05/12/2018
 *      Author: azpei
 */

#include "S32K144.h"

#ifndef EEEPROM_H_
#define EEEPROM_H_

#define EEE_SUCCESS	0
#define EEE_ALREADY_ENABLED -1

#define USER_DATA_SIZE	32u
#define DISABLE_INTERRUPTS() __asm volatile ("cpsid i" : : : "memory");

#define ODOMETER         1
#define TRIP_ODOMETER    2
#define TANK_LEVEL       3

int EEEPROM_Init();
int EEEPROM_Write_Data(int data, int target);
int EEEPROM_Read_Data(int target);

#endif /* EEEPROM_H_ */
