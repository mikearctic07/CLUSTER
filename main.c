/* Including needed modules to compile this module/procedure */
#include "Cpu.h"
#include "clockMan1.h"
#include "pin_mux.h"
#include "FreeRTOS.h"
#if CPU_INIT_CONFIG
  #include "Init_Config.h"
#endif

volatile int exit_code = 0;

#include <stdint.h>
#include <stdbool.h>

extern void rtos_start(void);
#define PEX_RTOS_START rtos_start


int main(void)
{
  /* Write your local variable definition here */

  /*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
  #ifdef PEX_RTOS_INIT
    PEX_RTOS_INIT();                   /* Initialization of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of Processor Expert internal initialization.                    ***/

    /* All of the code is in rtos.c file */

  #ifdef PEX_RTOS_INIT
    PEX_RTOS_INIT();
  #endif





  #ifdef PEX_RTOS_START
    PEX_RTOS_START();
  #endif

  for(;;) {
    if(exit_code != 0) {
      break;
    }
  }
  return exit_code;

}

