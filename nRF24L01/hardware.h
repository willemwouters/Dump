#if defined (HARDWARE_GEN)
	#define SPI_SCK		LATCbits.LATC3		// Clock pin, PORTC pin 3 
	#define SPI_SO		LATCbits.LATC5		// Serial output pin, PORTC pin 5 
	#define SPI_SI		PORTCbits.RC4		// Serial input pin, PORTC pin 4 
	#define SPI_CSN		LATCbits.LATC2		// CSN output pin, PORTC pin 2
	#define SPI_CE		LATCbits.LATC1		// CE output pin, PORTC pin 1
	#define SPI_IRQ		PORTBbits.RB0		// IRQ input pin, PORTB pin 0
	#define SPI_SCALE	4              		// postscaling of signal 
#elif defined (HARDWARE_PROTON) // ** PIC 18F4550
	#define SPI_SCK		LATBbits.LATB1		// Clock pin
	#define SPI_SO		LATCbits.LATC7		// Serial output pin
	#define SPI_SI		PORTBbits.RB0		// Serial input pin
	#define SPI_CSN		LATCbits.LATC1		// CSN output pin
	#define SPI_CE		LATCbits.LATC2		// CE output pin
	#define SPI_IRQ		PORTCbits.RC6		// IRQ input pin

	#define SPI_SCALE	4              		// postscaling of signal 

	#define SPI_SCK_TRIS	TRISBbits.RB1	// IO direção
	#define SPI_SO_TRIS		TRISCbits.RC7	// IO direção
	#define SPI_SI_TRIS		TRISBbits.RB0	// IO direção
	#define SPI_CSN_TRIS	TRISCbits.RC1	// IO direção
	#define SPI_CE_TRIS		TRISCbits.RC2	// IO direção
	#define SPI_IRQ_TRIS	TRISCbits.RC6	// IO direção

#elif defined (HARDWARE_PIC_EXPERT2) // ** PIC 18F4550
	#define SPI_SCK		LATBbits.LATB1		// Clock pin
	#define SPI_SO		LATCbits.LATC7		// Serial output pin
	#define SPI_SI		PORTBbits.RB0		// Serial input pin
	#define SPI_CSN		LATCbits.LATC1		// CSN output pin
	#define SPI_CE		LATCbits.LATC2		// CE output pin
	#define SPI_IRQ		PORTCbits.RC6		// IRQ input pin

	#define SPI_SCALE	4              		// postscaling of signal 

	#define SPI_SCK_TRIS	TRISBbits.RB1	// IO direção
	#define SPI_SO_TRIS		TRISCbits.RC7	// IO direção
	#define SPI_SI_TRIS		TRISBbits.RB0	// IO direção
	#define SPI_CSN_TRIS	TRISCbits.RC1	// IO direção
	#define SPI_CE_TRIS		TRISCbits.RC2	// IO direção
	#define SPI_IRQ_TRIS	TRISCbits.RC6	// IO direção

#else
	#error "Defina Placa Hardware"
#endif