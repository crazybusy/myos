#include <devices.h>
void* memset(void* bufptr, int value, size_t size) {
	unsigned char* buf = (unsigned char*) bufptr;
	for (size_t i = 0; i < size; i++)
		buf[i] = (unsigned char) value;
	return bufptr;
}
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
