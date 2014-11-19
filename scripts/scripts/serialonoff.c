#include <sys/ioctl.h>
#include <termios.h>
#include <linux/serial.h> 
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>

// Toggle DTR line for a given amount of time

int setdtr (int tty_fd, int on)
{
	int controlbits = TIOCM_DTR;
	if(on)
		return(ioctl(tty_fd, TIOCMBIC, &controlbits));
	else
		return(ioctl(tty_fd, TIOCMBIS, &controlbits));
} 

int main(int argc, char* argv[])
{
	const char *dev="/dev/ttyS0";
	int fd;
	int ret;

	if (argc != 2)
	{
		printf("Usage: %s <1/0>\n", argv[0]);
		exit(1);
	}

	if((fd = open(dev,O_RDWR)) < 0)
	{
		fprintf(stderr,"Couldn't open %s\n",dev);
		return(1);
	}

	if (argv[1][0] == '0')
	{
		printf("OFF\n");
		ret = setdtr(fd,1);
	}
	else
	{
		printf("ON\n");
		ret = setdtr(fd,0);
	}

	close(fd);

	return ret;
}
