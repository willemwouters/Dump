 
#include "hardware.h"
#include <p18F4550.h>
#include <spi.h>

unsigned char Test_SPI (void);

//----------------------------------------------------------------------------
#pragma config PLLDIV   = 5         // (20 MHz crystal on PICDEM FS USB board)
#pragma config CPUDIV   = OSC1_PLL2   
#pragma config USBDIV   = 2         // Clock source from 96MHz PLL/2
#pragma config FOSC     = HSPLL_HS
#pragma config FCMEN    = OFF
#pragma config IESO     = OFF
#pragma config PWRT     = OFF
#pragma config BOR      = ON
#pragma config BORV     = 3
#pragma config VREGEN   = ON      //USB Voltage Regulator
#pragma config WDT      = OFF
#pragma config WDTPS    = 32768
#pragma config MCLRE    = ON
#pragma config LPT1OSC  = OFF
#pragma config PBADEN   = OFF
#pragma config STVREN   = ON
#pragma config LVP      = OFF
#pragma config XINST    = OFF       // Extended Instruction Set 
#pragma config CP0      = OFF
#pragma config CP1      = OFF
#pragma config CPB      = OFF
#pragma config WRT0     = OFF
#pragma config WRT1     = OFF
#pragma config WRTB     = OFF       // Boot Block Write Protection
#pragma config WRTC     = OFF
#pragma config EBTR0    = OFF
#pragma config EBTR1    = OFF
#pragma config EBTRB    = OFF


void Setup (void)
{
	SPI_CSN_TRIS = 0;
	SPI_CE_TRIS	= 0;
	SPI_IRQ_TRIS = 1;
	SPI_SO_TRIS = 0;
	SPI_SCK_TRIS = 0;

	OpenSPI(SPI_FOSC_16, MODE_00, SMPMID); //open SPI1

	LED_IO_TRIS = 0;
}


void main (void)
{
	unsigned char result;

	Setup();

	result = Test_SPI();

	if (result)
		while (1);			// se retornou 1 é porque tem falha comunicação c/ SPi



}//

