//=============================================================================
// 						Driver para rádio nRF24L01 by Smart Radio
// ** Data: Maio13
//
// ** Revisão: 0
//
// ** Nome: nRF24L01-Driver-Smart-Radio.c
//
// ** Compilador: C18 Student v3.36 ou superior
//
// ** Funcionalidades:
//		- interfaceamento módulo nRF24L01, inicialização, recepção e transmissão de dados
//		
// ** Uso
//      - incluir no projeto nRF24L01-Driver-Smart-Radio.c e nRF24L01-Driver-Smart-Radio.h
//		- chamar Open_nRF24L01_SPI p/ inicializar o rádio, parâmetros, canal, etc em "nRF24L01-Driver-Smart-Radio.h"
// 		- para transmitir colocar dados no buffer e chamar transmit_data( unsigned char *TX_Data )
//		- para receber: monitorar io "SPI_IRQ" - ativo zero, os dados estarão no buffer, chamar read_RX(unsigned char *RX_Data) 
//		- Ligações c/ PIC 18F4550 (placa PROTO'n: http://www.smartradio.com.br/loja-pic/?id=42)
//	 		e módulo pronto http://dx.com/p/2-4ghz-wireless-nrf24l01-module-150867 (imagem c/ pinagem em "other files" desta pasta MPLab)
//
//			Função	PIC I/O		Módulo NRF24L01	
//			CS		C1			4	
//			SCK		B1			5
//	   MiSO/SDI		B0			7
//	   MOSi/SDO		C7			6
//	   		IRQ		C6			8
//			CSN		C2			3
//			3Volts  --			2   (Nota: usar regulador externo volts)
//			GND		GND			1
//	
// ** Créditos:
//		- Smart Radio - Marcelo Campos - www.SmartRadio.com.br/pic
//		- Leon Heller - http://webspace.webring.com/people/jl/leon_heller/
//  	
//=============================================================================

#include "nRF24L01-Driver-Smart-Radio.h"
#include "hardware.h"

#include <p18F4550.h>
#include <spi.h>
#include <stdio.h>
#include <timers.h>
#include <Delays.h>

void Open_nRF24L01_SPI (void)
{
	unsigned char result;

	SPI_CSN_TRIS = 0;
	SPI_CE_TRIS	= 0;
	SPI_IRQ_TRIS = 1;
	SPI_SO_TRIS = 0;
	SPI_SCK_TRIS = 0;
	
	SPI_CE = 1;
	SPI_CSN = 1;

	OpenSPI(SPI_FOSC_4, MODE_00, SMPMID); //open SPI1
	
	Delay1KTCYx(3);

	result = Test_SPI();
	if (result)
	{
		LED_ON
		while (1);				// se retornou 1 é porque tem falha comunicação c/ SPi
	}

	configure_Radio();

}//

unsigned char spi_Send_Read(unsigned char byte)
{
	SSPBUF = byte;	
	while(!DataRdySPI());	

	return SSPBUF;
}//

unsigned char Test_SPI (void)
{
	unsigned char data [] = {RADIO_ADDRESS_1, RADIO_ADDRESS_2, RADIO_ADDRESS_3, RADIO_ADDRESS_4, RADIO_ADDRESS_5};
	unsigned char data_read = 0;
	unsigned char status, i;

	//write TX_ADDRESS register
	SPI_CSN = 0;			//CSN low
	status = spi_Send_Read(0x30);
	spi_Send_Read(data[0]);
	spi_Send_Read(data[1]);
	spi_Send_Read(data[2]);
	spi_Send_Read(data[3]);
	spi_Send_Read(data[4]);
	SPI_CSN = 1;			//CSN high

	//read TX_ADDRESS register
	//Check that values are correct using the MPLAB debugger
	SPI_CSN = 0;			//CSN low
	status = spi_Send_Read(0x10);
	for (i = 0; i < 5; i++)
	{
		data_read = spi_Send_Read(0x00);
		nop();
		if (data_read != data[i])  	// se lido não for igual
			return 1;				// retorna 0 = erro comunicação SPi PIC/nRF24L01
	}

	SPI_CSN = 1;					// CSN high

	// retorna 0 = sucesso comunicação SPi PIC/nRF24L01
	return 0;

} //

void read_RX(unsigned char *RX_Data)
{
    unsigned char i, j;  
    
	// flush data buffer
	for (i = 0; i < RF_PAYLOAD; i++)
		RX_Data[i] = 0;

	// Read RX payload e coloca no buffer RX_Data 
    SPI_CSN = 0;    
   	spi_Send_Read(0x61);    
    for (j = 0; j < RF_PAYLOAD; j++)
    {        
       	RX_Data[j] = spi_Send_Read(0);        
    }    
    SPI_CSN = 1;    
    
	//Flush RX FIFO    
    SPI_CSN = 0;    
 	spi_Send_Read(0xE2);    
    SPI_CSN = 1;
    SPI_CSN = 0;
 
	//reset int    
  	spi_Send_Read(0x27);
	spi_Send_Read(0x40);    
    SPI_CSN = 1;
}//

void transmit_data( unsigned char *TX_Data )
{
    unsigned char i, data, cmd;   
    
    SPI_CSN = 0;
    
	//clear previous ints
  	spi_Send_Read(0x27);
 	spi_Send_Read(0x7E);
	SPI_CSN = 1;
    SPI_CSN = 0;
    
	//PWR_UP = 1
   	spi_Send_Read(0x20);
 	spi_Send_Read(0x3A);
    SPI_CSN = 1;
    SPI_CSN = 0;
    
    //clear TX fifo
    //the data sheet says that this is supposed to come up 0 after POR, but that doesn't seem to be the case
   	spi_Send_Read(0xE1);
    SPI_CSN = 1;
    SPI_CSN = 0;
    
	//fill byte payload
   	spi_Send_Read(0xA0);
   	
	for (i = 0; i< RF_PAYLOAD; i++)
		spi_Send_Read( TX_Data[i] );

    SPI_CSN = 1;
    
    //Pulse CE to start transmission
    SPI_CE = 1;
    Delay100TCYx(2);
    SPI_CE = 0;
}//

// configure nRF24L01 for receive only
void configure_RX(void)
{
    unsigned char i, j;

    SPI_CSN = 0;
    SPI_CE = 0;
    
	//PRX, CRC enabled
	spi_Send_Read(0x20);
	spi_Send_Read(0x39); 
	SPI_CSN = 1;   
	SPI_CSN = 0;
    
	//disable auto-ack for all channels      
	spi_Send_Read(0x21);
	spi_Send_Read(0x00);     
	SPI_CSN = 1;    
	SPI_CSN = 0;
    
	//address width = 5 bytes  
  	spi_Send_Read(0x23);
	spi_Send_Read(0x03);    
    SPI_CSN = 1;    
    SPI_CSN = 0;
    
	//data rate =   
  	spi_Send_Read(0x26);
#if defined ( RF_DATA_RATE_250KBPS ) 
	spi_Send_Read(0x27);    		// 0x07 = 1MBPS - 0x27 = 250Kbps
#elif defined ( RF_DATA_RATE_1MBPS )
	spi_Send_Read(0x07);    		
#else 
	#error "Definir RF_DATA_RATE"
#endif

    SPI_CSN = 1;
  	SPI_CSN = 0;

	//4 byte payload  
 	spi_Send_Read(0x31);
	spi_Send_Read(RF_PAYLOAD);    
    SPI_CSN = 1;    
    SPI_CSN = 0;

    //set channel 
   	spi_Send_Read(0x25);
	spi_Send_Read(RF_CHANNEL);    
    SPI_CSN = 1;     
    SPI_CSN = 0; 

    //set address 
    spi_Send_Read(0x30);
	spi_Send_Read(RADIO_ADDRESS_1);
	spi_Send_Read(RADIO_ADDRESS_2);
	spi_Send_Read(RADIO_ADDRESS_3);
	spi_Send_Read(RADIO_ADDRESS_4);
	spi_Send_Read(RADIO_ADDRESS_5);

//    for (j = 0; j < 5; j++)
// 		spi_Send_Read(0xE7); 
    SPI_CSN = 1;  
    SPI_CSN = 0;
    
	//PWR_UP = 1   
 	spi_Send_Read(0x20);
	spi_Send_Read(0x3B);   
    SPI_CSN = 1;    
    SPI_CE = 1;     
}//

// configure nRF24L01 for transmit only
void configure_transmitter(void)
{
	int  i, j;
    unsigned char data, cmd;

    SPI_CE = 0;
    SPI_CSN = 0;

	// PTX, CRC enabled, mask a couple of ints    
 	spi_Send_Read(0x20);
  	spi_Send_Read(0x38);
	SPI_CSN = 1; 
    SPI_CSN = 0;
    
	//auto retransmit off
 	spi_Send_Read(0x24);    
   	spi_Send_Read(0x00);    
    SPI_CSN = 1;
    SPI_CSN = 0;
    
	//address width = 5
   	spi_Send_Read(0x23);
 	spi_Send_Read(0x03);    
    SPI_CSN = 1;
    SPI_CSN = 0;
    
	//data rate = 
   	spi_Send_Read(0x26);
#if defined ( RF_DATA_RATE_250KBPS ) 
	spi_Send_Read(0x27);    		// 0x07 = 1MBPS - 0x27 = 250Kbps
#elif defined ( RF_DATA_RATE_1MBPS )
	spi_Send_Read(0x07);    		
#else 
	#error "Definir RF_DATA_RATE"
#endif
    SPI_CSN = 1; 
    SPI_CSN = 0;
    
	//set channel 
   	spi_Send_Read(0x25);
 	spi_Send_Read(RF_CHANNEL);
    SPI_CSN = 1;
    SPI_CSN = 0;
    
	//set address
   	spi_Send_Read(0x30);    
	spi_Send_Read(RADIO_ADDRESS_1);
	spi_Send_Read(RADIO_ADDRESS_2);
	spi_Send_Read(RADIO_ADDRESS_3);
	spi_Send_Read(RADIO_ADDRESS_4);
	spi_Send_Read(RADIO_ADDRESS_5);
//    for (j = 0; j < 5; j++)
// 		spi_Send_Read(0xE7); 

    SPI_CSN = 1;
    SPI_CSN = 0;
    
    //disable auto-ack, RX mode
    //shouldn't have to do this, but it won't TX if you don't
   	spi_Send_Read(0x21);
 	spi_Send_Read(0x00);
    SPI_CSN = 1;
}//

// complete configure nRF24L01 for Rx/Tx
void configure_Radio(void)
{
	
    SPI_CSN = 0;
    SPI_CE = 0;
    
	//PRX, CRC enabled
	spi_Send_Read(0x20);
	spi_Send_Read(0x39); 
	SPI_CSN = 1;   
	SPI_CSN = 0;
    
	//disable auto-ack for all channels      
	spi_Send_Read(0x21);
	spi_Send_Read(0x00);     
	SPI_CSN = 1;    
	SPI_CSN = 0;
    
	//address width = 5 bytes  
  	spi_Send_Read(0x23);
	spi_Send_Read(0x03);    
    SPI_CSN = 1;    
    SPI_CSN = 0;
    
	//auto retransmit off
 	spi_Send_Read(0x24);    
   	spi_Send_Read(0x00);    
    SPI_CSN = 1;
    SPI_CSN = 0;

    //set channel 
   	spi_Send_Read(0x25);
	spi_Send_Read(RF_CHANNEL);    
    SPI_CSN = 1;     
    SPI_CSN = 0; 

	//data rate =   
  	spi_Send_Read(0x26);
#if defined ( RF_DATA_RATE_250KBPS ) 
	spi_Send_Read(0x27);    		// 0x07 = 1MBPS - 0x27 = 250Kbps
#elif defined ( RF_DATA_RATE_1MBPS )
	spi_Send_Read(0x07);    		
#else 
	#error "Definir RF_DATA_RATE"
#endif

    SPI_CSN = 1;
  	SPI_CSN = 0;

	//4 byte payload  
 	spi_Send_Read(0x31);
	spi_Send_Read(RF_PAYLOAD);    
    SPI_CSN = 1;    
    SPI_CSN = 0;

    //set TX address 
    spi_Send_Read(0x30);
	spi_Send_Read(RADIO_ADDRESS_1);
	spi_Send_Read(RADIO_ADDRESS_2);
	spi_Send_Read(RADIO_ADDRESS_3);
	spi_Send_Read(RADIO_ADDRESS_4);
	spi_Send_Read(RADIO_ADDRESS_5);

    SPI_CSN = 1;  
    SPI_CSN = 0;

    //set RX address 
    spi_Send_Read(0x2A);
	spi_Send_Read(RADIO_ADDRESS_1);
	spi_Send_Read(RADIO_ADDRESS_2);
	spi_Send_Read(RADIO_ADDRESS_3);
	spi_Send_Read(RADIO_ADDRESS_4);
	spi_Send_Read(RADIO_ADDRESS_5);

    SPI_CSN = 1;  
    SPI_CSN = 0;
    
	//PWR_UP = 1   
 	spi_Send_Read(0x20);
	spi_Send_Read(0x3B);    // 3B
    SPI_CSN = 1;    
    SPI_CE = 1;  
	
}//
