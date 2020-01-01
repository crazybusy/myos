//
// isr.c -- High level interrupt service routines and interrupt request handlers.
// Part of this code is modified from Bran's kernel development tutorials.
// Rewritten for JamesM's kernel development tutorials.
//

#include <tty.h>
#include <isr.h>
#include <devices.h>


int counter;

// This gets called from our ASM interrupt handler stub.
void isr_handler(registers_t regs)
{
    terminal_write_string(":interrupt:");      
    monitor_write_dec(regs.int_no);        
    terminal_write_string(":isr_handler:Returning");
    terminal_write_string("\n");
}
/* Each of the IRQ ISRs point to this function, rather than
*  the 'fault_handler' in 'isrs.c'. The IRQ Controllers need
*  to be told when you are done servicing them, so you need
*  to send them an "End of Interrupt" command (0x20). There
*  are two 8259 chips: The first exists at 0x20, the second
*  exists at 0xA0. If the second controller (an IRQ from 8 to
*  15) gets an interrupt, you need to acknowledge the
*  interrupt at BOTH controllers, otherwise, you only send
*  an EOI command to the first controller. If you don't send
*  an EOI, you won't raise any more IRQs */
void irq_handler(registers_t regs)
{

    switch(regs.int_no){
        case 32:
        break;
        case 33: 
        terminal_write_string(":key_irq_handler:");
        monitor_write_dec(regs.int_no);
        terminal_write_string(":");
        monitor_write_dec(inportb(0x60));
        terminal_write_string("\n");
        break;
        default:
        terminal_write_string(":default_irq_handler:");
        monitor_write_dec(regs.int_no);
        terminal_write_string("\n");
    }


    /* If the IDT entry that was invoked was greater than 40
    *  (meaning IRQ8 - 15), then we need to send an EOI to
    *  the slave controller */
    if (regs.int_no >= 40)
    {
        outportb(0xA0, 0x20);
    }

    /* In either case, we need to send an EOI to the master
    *  interrupt controller too */
    outportb(0x20, 0x20);
}