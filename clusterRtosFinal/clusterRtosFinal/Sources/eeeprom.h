/*
 * eeeprom.h
 *
 *  Created on: 05/12/2018
 *      Author: azpei
 */

#ifndef EEEPROM_H_
#define EEEPROM_H_

#include "S32K144.h"
#include "Cpu.h"
#include "FreeRTOS.h"
#include "stdint.h"
#include "stdbool.h"
#include "definitions.h"

int EEEPROM_Init();

void EEEPROM_Write_Data(uint32_t data, uint8_t target);

uint32_t EEEPROM_Read_Data(uint8_t target);

#endif /* EEEPROM_H_ */
