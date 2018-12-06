#include "S32K144.h" /* include peripheral declarations S32K144 */
//#include "FlexCAN.h"
#include "clocks_and_modes.h"
#include "can.h"

void WDOG_disable (void){
  WDOG->CNT=0xD928C520; 	/* Unlock watchdog */
  WDOG->TOVAL=0x0000FFFF;	/* Maximum timeout value */
  WDOG->CS = 0x00002100;    /* Disable watchdog */
}

int main(void) {
    for (;;) {  
    }
}
