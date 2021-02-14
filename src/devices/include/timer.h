#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <isr.h>


void timer_callback();
void init_timer(uint32_t frequency);