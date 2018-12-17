/*
 * clock.h
 *
 *  Created on: 22/10/2018
 *      Author: azpei
 */

#ifndef CLOCK_H_
#define CLOCK_H_

#include "S32K144.h"
#include "Cpu.h"
#include "FreeRTOS.h"
#include "stdint.h"
#include "definitions.h"

void CLOCK_SOSC_Init_8MHz(void);

void CLOCK_SPLL_Init_160MHz(void);

void CLOCK_Setup_80MHz(void);

void CLOCK_Disable_Watchdog(void);

#endif /* CLOCK_H_ */
