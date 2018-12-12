#include "S32K144.h" /* include peripheral declarations S32K144 */
#include "FlexCAN.h" /* NXP felxcan header file */

#ifndef CAN_H_
#define CAN_H_

#define ID_POSITION 16
#define MB_ID_RECEIVE 0x14440000 //0X511     Multiply by four desired id in hexadecimal
#define MB_ID_STATUS 0x95C0000 //0x257
#define ID_SEND 0x555
#define MB_RECEPTION_EN	0x04000000
#define NO_FLXCAN 0x0000001F     /* Negate FlexCAN 1 halt state for 32 MBs */
#define BYTE0	24
#define BYTE1	16
#define BYTE2	8
#define BYTE	0XFF

typedef struct {
	uint8_t idCommand;
	uint8_t numParams;
	uint8_t param0;
	uint8_t param1;
} input;

void CAN_Init(void);
void CAN_transmit(int id,int dlc, int word1, int word2);
void CAN_receive(char * speed,char * tnk,char * od,char * ind);
uint32_t CAN_id2Val(uint16_t id);
void CAN_tarea(input * info,char * speed,char * tnk,char * od,char * ind);
void CAN_speed(input * info);
void CAN_odo(input * info);
void CAN_tnk(input * info);
void CAN_ind(input * info);

#endif /* CLOCKS_AND_MODES_H_ */
