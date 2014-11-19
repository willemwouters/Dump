//******************************************************************************
//
// nRF24L01+ radio Driver 
// Compiler C18
//
// *******************************************************************
// see nRF24L01-Driver-Smart-Radio.c and hardware.h for details / connections
// 
// Operation of this demo:	
// 		- if PORTAbits.RA3==0 transmits dat packets else wait for receive data packets(RX)
//
// Revision
// - Rev0 - Maio/11 	
//
//******************************************************************************



#include "nRF24L01-Driver-Smart-Radio.h" 
#include "hardware.h"

#include <p18F4550.h>
#include <spi.h>
#include <Delays.h>
#include <sw_uart.h>

/** C O N F I G U R A T I O N   B I T S ******************************/
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

// -- Soft USART
void DelayTXBitUART (void) // p/ detalhes do delay veja no cabeçalho deste arquivo
{
	Delay1KTCYx(1);
	Delay100TCYx(2);
	Delay10TCYx(2);
	nop() ;
	nop() ;
	nop() ;
	nop() ;
	nop() ;
	nop() ;
	nop() ;
	nop() ;
}//
void DelayRXHalfBitUART (void)	// p/ detalhes do delay veja no cabeçalho deste arquivo
{
	Delay100TCYx (6);
	Delay10TCYx  (1);
	nop() ;
}//
void DelayRXBitUART (void)		// p/ detalhes do delay veja no cabeçalho deste arquivo
{
	Delay1KTCYx (1);
	Delay100TCYx (2);
	Delay10TCYx  (2);
	nop() ;
	nop() ;
	nop() ;
	nop() ;
	nop() ;
	nop() ;

}//
void Usart_Send ( unsigned char *MSG_SAUD )
{
	int i = 0;

	while (MSG_SAUD[i])				// envia mensagem de saudação
	{
		WriteUART( MSG_SAUD [i] );
		i++;
	}

}//
// -------------

void Setup (void)
{
	unsigned char MSG_SAUD_Radio_nRF24L01 [] = {"nRF24L01 Radio\n\r"};

	TRISDbits.RD0 = 0;
	TRISAbits.RA4 = 0;

	LED_OFF  

	OpenUART();			// abre Soft UART @9600,8N1, TXD pino RB4 & RXD pino RB5
	Usart_Send (MSG_SAUD_Radio_nRF24L01);

	Open_nRF24L01_SPI();

	ADCON1 = 0x0E;		// CONFIGURA PA0 COMO ANALOGICA, restantes como digitais
	CMCON = 0x0F;		// DESABILITAR COMPARADOR

 
	// PIC Expert 2 somente
	// ---------------
	TRISBbits.RB3 = 0;	// mantém o GLCD resetado
	PORTBbits.RB3 = 0;	// só pra evitar de ficar piscando
	TRISEbits.RE2 = 0;	// pois compartilha o PORT D c/
	PORTEbits.RE2 = 0;  // os LEDs
	// ---------------
}//

void main (void)
{

	unsigned char i;
	unsigned char TX_Data [RF_PAYLOAD];
	unsigned char RX_Data [RF_PAYLOAD];
	int count = 0;

	Setup();

	if (PORTAbits.RA3)
	{ 

		while(1)
		{
	   		if (SPI_IRQ == 0)    			// wait for anything
	        {	
				LED_ON
	            read_RX(RX_Data);
				Usart_Send ( RX_Data ); 	// envia pela serial o recebido   
	            Delay1KTCYx(10);
				LED_OFF 
				count++;       
	        } 
		}
	}
	else
	{
		for (i=0; i< RF_PAYLOAD; i++)
			TX_Data[i] = i+ 0x30;

		while(1)
		{	
			LED_ON
			transmit_data(TX_Data);        
			Delay10KTCYx(255);

			LED_OFF	
			Delay10KTCYx(255);
			nop();  
			
		}			
	}

}//

