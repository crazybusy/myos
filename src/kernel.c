#include <descriptor_tables.h>

#include <devices.h>
#include <tty.h>
#include <timer.h>
#include <keyboard.h>


extern void mboot();
extern void start();
extern void gdt_flush(uint32_t value);
extern void idt_flush(uint32_t value);


void start_shell(){
	
	terminal_putchar('>');
	
	char input = read_keys();
	while (true){		
	if(input != -1){		
		terminal_putchar(input);		
		if (input == '\n')
			terminal_putchar('>');
	}	
	input = read_keys();
	}
}



//int main(void *mboot_ptr) 
int main() 
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
