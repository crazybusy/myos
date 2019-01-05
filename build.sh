rm -rf build
rm -rf dist
mkdir build
mkdir dist 


ASSEMBLER="nasm -f elf"
COMPILER="i686-elf-gcc -c"
LINKER="i686-elf-gcc -T ./src/linker.ld"

COMPILER_PARAMS="-std=gnu99 -ffreestanding -O2 -Wall -Wextra -I ./src/include"
LINKER_PARAMS="-ffreestanding -O2 -nostdlib"


$ASSEMBLER ./src/boot.s -o ./build/boot.o
$ASSEMBLER ./src/interrupt.s -o ./build/interrupt.o

$COMPILER $COMPILER_PARAMS ./src/common.c -o ./build/common.o 
$COMPILER $COMPILER_PARAMS ./src/string.c -o ./build/string.o 
$COMPILER $COMPILER_PARAMS ./src/tty.c -o ./build/tty.o 
$COMPILER $COMPILER_PARAMS ./src/kernel.c -o ./build/kernel.o 
$COMPILER $COMPILER_PARAMS ./src/descriptor_tables.c -o ./build/descriptor_tables.o 
#$COMPILER $COMPILER_PARAMS ./src/isr.c -o ./build/isr.o 

OBJECTS="./build/*"
$LINKER $LINKER_PARAMS -o ./dist/myos.bin $OBJECTS

mkdir -p isodir/boot/grub
cp ./dist/myos.bin isodir/boot/myos.bin
cp ./grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o ./dist/myos.iso isodir
rm -rf isodir
