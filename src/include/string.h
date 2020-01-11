#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

size_t strlen(const char* str);

// void* tostring(uint32_t value){
// 	size_t index = 0;
// 	char * string;
// 	do
// 	{
// 	const char c = '0' + value%10; //Add the integer to the ASCII Code of 0 to get numeric rep
// 	string[index++] = c;
// 	value/=10;
// 	}while(value > 0);
// 	string[index] = '\0';
// 	return string
// 	//return reverse(string, index);

// }
// void reverse(char* string, size_t length, char* reversed){
// 	size_t index =0; 
// 	while(length > 0)
// 		reversed[index++] = string[--length];
// 	reversed[index] = '\0';
// 	return reversed;
// }