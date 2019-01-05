#include <descriptor_tables.h>
#include <tty.h>

int main(void *mboot_ptr) 
{

	/* Initialize terminal interface */
	terminal_initialize();

	terminal_write_line("Hello, kernel World!");	

	terminal_write_string(mboot_ptr);    

    // Initialise all the ISRs and segmentation
   init_descriptor_tables();

//	asm volatile("int $0x3");
//    asm volatile("int $0x4");
    
    return 0;
}