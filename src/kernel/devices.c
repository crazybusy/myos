#include <devices.h>
#include <string.h>
#include <isr.h>
#include <tty.h>


uint8_t inportb (uint16_t _port)
{
   uint8_t ret;
   asm volatile("inb %1, %0" : "=a" (ret) : "dN" (_port));
   return ret;
}

void outportb (uint16_t _port, uint8_t _data)
{
	asm volatile ("outb %1, %0" : : "dN" (_port), "a" (_data));
}


