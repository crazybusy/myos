//
// isr.c -- High level interrupt service routines and interrupt request handlers.
// Part of this code is modified from Bran's kernel development tutorials.
// Rewritten for JamesM's kernel development tutorials.
//

#include <common.h>
#include <tty.h>
#include <isr.h>

// This gets called from our ASM interrupt handler stub.
void isr_handler(registers_t regs)
{
   terminal_write_string("recieved interrupt: ");
   //terminal_write_string(tostring(regs.int_no));
   terminal_write_string("\n");
}