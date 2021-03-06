#include <tty.h>

#define VGA_WIDTH 80
#define VGA_HEIGHT 25
#define TERMINAL_MMAP 0xB8000

size_t terminal_row;
size_t terminal_column;
uint8_t terminal_color;
uint16_t* terminal_buffer;

uint8_t vga_entry_color(enum vga_color fg, enum vga_color bg) 
{
	return fg | bg << 4;
}
 
uint16_t vga_entry(unsigned char uc, uint8_t color) 
{
	return (uint16_t) uc | (uint16_t) color << 8;
}


void terminal_initialize(void) 
{
	terminal_row = 0;
	terminal_column = 0;
	terminal_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	terminal_buffer = (uint16_t*) TERMINAL_MMAP;
	for (size_t y = 0; y < VGA_HEIGHT; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			const size_t index = y * VGA_WIDTH + x;
			terminal_buffer[index] = vga_entry(' ', terminal_color);
		}
	}
}
 
void terminal_setcolor(uint8_t color) 
{
	terminal_color = color;
}
 
void terminal_putentryat(char c, uint8_t color, size_t x, size_t y) 
{
	const size_t index = y * VGA_WIDTH + x;
	terminal_buffer[index] = vga_entry(c, color);
}
 
void terminal_scroll(){
	terminal_buffer = (uint16_t*) TERMINAL_MMAP;
	for (size_t y = 0; y < VGA_HEIGHT - 1; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			const size_t index = y * VGA_WIDTH + x;
			terminal_buffer[index] = terminal_buffer[index + VGA_WIDTH];
		}
	}	
	for (size_t y = VGA_HEIGHT - 1; y < VGA_HEIGHT; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			const size_t index = y * VGA_WIDTH + x;
			terminal_buffer[index] = vga_entry(' ', terminal_color);
		}
	}
}

void terminal_putchar(char c) 
{
	switch(c){
		case '\n':
			terminal_column = 0;
			if (++terminal_row == VGA_HEIGHT){
				terminal_scroll();
				terminal_row--;
			}
			break;
		default:
		terminal_putentryat(c, terminal_color, terminal_column, terminal_row);
			if (++terminal_column == VGA_WIDTH) {
				terminal_column = 0;
				if (++terminal_row == VGA_HEIGHT)
				{
					terminal_scroll();
					terminal_row--;
				}
			}
	}
}

void terminal_write(const char* data, size_t size) 
{
	for (size_t i = 0; i < size; i++)
		terminal_putchar(data[i]);
}
 
void terminal_write_string(const char* data) 
{
	terminal_write(data, strlen(data));
}

void terminal_write_line(const char* data) 
{
	terminal_write_string(data);
	terminal_write_string("\n");
}


void monitor_write_dec(uint8_t n)
{

    if (n == 0)
    {
        terminal_putchar('0');
        return;
    }

    int8_t acc = n;
    char c[8];
    int i = 0;
    while (acc > 0)
    {
        c[i] = '0' + acc%10;
        acc /= 10;
        i++;
    }
    c[i] = 0;

    char c2[8];
    c2[i--] = 0;
    int j = 0;
    while(i >= 0)
    {
        c2[i--] = c[j++];
    }
    terminal_write_string(c2);

}
