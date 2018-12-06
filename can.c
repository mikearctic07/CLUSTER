#include "can.h"

uint32_t  RxCODE;              /* Received message buffer code */
uint32_t  RxID;                /* Received message ID */
uint32_t  RxLENGTH;            /* Recieved message number of data bytes */
uint32_t  RxTIMESTAMP;         /* Received message time */

void CAN_init(void){
#define MSG_BUF_SIZE  4    /* Msg Buffer Size. (CAN 2.0AB: 2 hdr +  2 data= 4 words) */
	uint32_t   i=0;

	PCC->PCCn[PCC_FlexCAN0_INDEX] |= PCC_PCCn_CGC_MASK; /* CGC=1: enable clock to FlexCAN0 */
	CAN0->MCR |= CAN_MCR_MDIS_MASK;         /* MDIS=1: Disable module before selecting clock */
	CAN0->CTRL1 &= ~CAN_CTRL1_CLKSRC_MASK;  /* CLKSRC=0: Clock Source = oscillator (8 MHz) */
	CAN0->MCR &= ~CAN_MCR_MDIS_MASK;        /* MDIS=0; Enable module config. (Sets FRZ, HALT)*/
	while (!((CAN0->MCR & CAN_MCR_FRZACK_MASK) >> CAN_MCR_FRZACK_SHIFT))  {}
	/* Good practice: wait for FRZACK=1 on freeze mode entry/exit */
	CAN0->CTRL1 = 0x00DB0006; /* Configure for 500 KHz bit time */
	/* Time quanta freq = 16 time quanta x 500 KHz bit time= 8MHz */
	/* PRESDIV+1 = Fclksrc/Ftq = 8 MHz/8 MHz = 1 */
	/*    so PRESDIV = 0 */
	/* PSEG2 = Phase_Seg2 - 1 = 4 - 1 = 3 */
	/* PSEG1 = PSEG2 = 3 */
	/* PROPSEG= Prop_Seg - 1 = 7 - 1 = 6 */
	/* RJW: since Phase_Seg2 >=4, RJW+1=4 so RJW=3. */
	/* SMP = 1: use 3 bits per CAN sample */
	/* CLKSRC=0 (unchanged): Fcanclk= Fosc= 8 MHz */
	for(i=0; i<128; i++ ) {   /* CAN0: clear 32 msg bufs x 4 words/msg buf = 128 words*/
		CAN0->RAMn[i] = 0;      /* Clear msg buf word */
	}
	for(i=0; i<16; i++ ) {          /* In FRZ mode, init CAN0 16 msg buf filters */
		CAN0->RXIMR[i] = 0xFFFFFFFF;  /* Check all ID bits for incoming messages */
	}
	CAN0->RXMGMASK = 0x1FFFFFFF;  /* Global acceptance mask: check all ID bits */
	CAN0->RAMn[ 4*MSG_BUF_SIZE + 0] = MB_RECEPTION_EN; /* Msg Buf 4, word 0: Enable for reception */
	/* EDL,BRS,ESI=0: CANFD not used */
	/* CODE=4: MB set to RX inactive */
	/* IDE=0: Standard ID */
	/* SRR, RTR, TIME STAMP = 0: not applicable */
	//#ifdef NODE_A                                   /* Node A receives msg with std ID 0x511 */
	//  CAN0->RAMn[ 4*MSG_BUF_SIZE + 1] = 0x14440000; /* Msg Buf 4, word 1: Standard ID = 0x111 */
	//#else                                           /* Node B to receive msg with std ID 0x555 */
	//  CAN0->RAMn[ 4*MSG_BUF_SIZE + 1] = 0x15540000; /* Msg Buf 4, word 1: Standard ID = 0x555 */
	//#endif

	CAN0->RAMn[4*MSG_BUF_SIZE + 1] = MB_ID_RECEIVE;
	CAN0->RAMn[ 3*MSG_BUF_SIZE + 0] = MB_RECEPTION_EN;
	CAN0->RAMn[3*MSG_BUF_SIZE + 1] = MB_ID_STATUS;
	/* PRIO = 0: CANFD not used */
	CAN0->MCR = NO_FLXCAN;
	while ((CAN0->MCR && CAN_MCR_FRZACK_MASK) >> CAN_MCR_FRZACK_SHIFT)  {}
	/* Good practice: wait for FRZACK to clear (not in freeze mode) */
	while ((CAN0->MCR && CAN_MCR_NOTRDY_MASK) >> CAN_MCR_NOTRDY_SHIFT)  {}
	/* Good practice: wait for NOTRDY to clear (module ready)  */
}
