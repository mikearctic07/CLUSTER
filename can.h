#include "S32K144.h" /* include peripheral declarations S32K144 */
#include "FlexCAN.h" /* NXP felxcan header file */

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


