//nRF24L01-SmartRadio.h



unsigned char Test_SPI (void);
void Open_nRF24L01_SPI (void);


void configure_transmitter(void);
void transmit_data( unsigned char *TX_Data );

void read_RX(unsigned char *RX_Data);
void configure_RX(void);

void configure_Radio(void);

// Macros
#define nop() _asm nop _endasm

//#define RF_DATA_RATE_1MBPS
#define RF_DATA_RATE_250KBPS 

// atenção: Aqui usando próximo canais WIFI 9-11
#define RF_CHANNEL 0x84

#define RF_PAYLOAD 0x10

#define RADIO_ADDRESS_1 0x18
#define RADIO_ADDRESS_2 0x00
#define RADIO_ADDRESS_3 0x29
#define RADIO_ADDRESS_4 0x35
#define RADIO_ADDRESS_5 0x01

#define LED_ON PORTDbits.RD0 = 1; PORTAbits.RA4 =1;
#define LED_OFF PORTDbits.RD0 = 0; PORTAbits.RA4 =0;
