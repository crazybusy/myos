// common.h -- Defines typedefs and some global functions.
// From JamesM's kernel development tutorials.
#ifndef DEVICES_H
#define DEVICES_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>


// void outb(uint16_t port, uint8_t value);
// uint8_t inb(uint16_t port);
// uint16_t inw(uint16_t port);


uint8_t inportb (uint16_t _port);
void outportb (uint16_t _port, uint8_t _data);

#endif

