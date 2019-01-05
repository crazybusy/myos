#include <descriptor_tables.h>
#include <tty.h>

extern void mboot();
extern void start();
extern void gdt_flush(uint32_t value);
extern void idt_flush(uint32_t value);



int main(void *mboot_ptr) 
{
	/* Initialize terminal interface */
	terminal_initialize();

	terminal_write_line("Hello, kernel World!");	

	// Initialise all the ISRs and segmentation
	init_descriptor_tables();	

	terminal_write_line("Writing some interrupts");	

	asm volatile("int $0x3");
	asm volatile("int $0x4");

    return 0;
}