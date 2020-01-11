#include <descriptor_tables.h>
#include <tty.h>
#include <devices.h>
#include <isr.h>
#include <keyboard.h>


extern void mboot();
extern void start();
extern void gdt_flush(uint32_t value);
extern void idt_flush(uint32_t value);

uint32_t tick = 0;

void start_shell(){
	terminal_putchar('>');


}

void timer_callback(registers_t regs)
{
   tick++;   
   //terminal_write_line((char *)keyboard_buffer);
}

void init_timer(uint32_t frequency)
{
   // Firstly, register our timer callback.
   register_interrupt_handler(32, &timer_callback);

   // The value we send to the PIT is the value to divide it's input clock
   // (1193180 Hz) by, to get our required frequency. Important to note is
   // that the divisor must be small enough to fit into 16-bits.
   uint32_t divisor = 1193180 / frequency;

   // Send the command byte.
   outportb(0x43, 0x36);

   // Divisor has to be sent byte-wise, so split here into upper/lower bytes.
   uint8_t l = (uint8_t)(divisor & 0xFF);
   uint8_t h = (uint8_t)( (divisor>>8) & 0xFF );

   // Send the frequency divisor.
   outportb(0x40, l);
   outportb(0x40, h);
}


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

	asm volatile("int $0x20");
	terminal_write_line("Returned from IRQ");	
	asm volatile("int $0x21");
	asm volatile("int $0x22");
	
	terminal_write_line("Enabling hardware interrupts with sti");	
	asm volatile("sti");

	terminal_write_line("Initialise the keyboard");	
	init_keyboard();

	terminal_write_line("Initialise the Timer");	
	init_timer(50);

	start_shell();

    return 0;
}
