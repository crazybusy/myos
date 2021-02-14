#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <isr.h>


void timer_callback(registers_t regs);
void init_timer(uint32_t frequency);