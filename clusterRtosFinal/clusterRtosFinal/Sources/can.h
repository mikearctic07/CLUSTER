
#ifndef CAN_H_
#define CAN_H_

#include "S32K144.h"
#include "Cpu.h"
#include "FreeRTOS.h"
#include "stdint.h"
#include "stdbool.h"
#include "definitions.h"
#include "cluster.h"
#include "eeeprom.h"

typedef struct {
	uint8_t idCommand;
	uint8_t numParams;
	uint8_t param0;
	uint8_t param1;
} input;

void CAN_Init(void);
void CAN_transmit(uint16_t id, uint8_t dlc, uint8_t word1, uint8_t word2);
void CAN_receive(uint16_t *speed);
uint32_t CAN_id2Val(uint16_t id);

#endif /* CLOCKS_AND_MODES_H_ */
