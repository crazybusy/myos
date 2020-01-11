
ARCH_FOLDER="./src/kernel"
KERNEL_FOLDER="./src/kernel"
BUILD_FOLDER="./build"
DIST_FOLDER="./dist"

rm -rf $BUILD_FOLDER
rm -rf $DIST_FOLDER
mkdir $BUILD_FOLDER
mkdir $DIST_FOLDER 

ASSEMBLER="nasm -f elf"
COMPILER="i686-elf-gcc -c"
LINKER="i686-elf-gcc"

COMPILER_PARAMS="-std=gnu99 -ffreestanding -O2 -Wall -Wextra"
LINKER_PARAMS="-ffreestanding -O2 -nostdlib"

$ASSEMBLER $ARCH_FOLDER/boot.s -o $BUILD_FOLDER/boot.o
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $ARCH_FOLDER/descriptor_tables.c -o $BUILD_FOLDER/descriptor_tables.o 

$ASSEMBLER $KERNEL_FOLDER/interrupts.s -o $BUILD_FOLDER/interrupts.o
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $KERNEL_FOLDER/devices.c -o $BUILD_FOLDER/devices.o 
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $KERNEL_FOLDER/string.c -o $BUILD_FOLDER/string.o 
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $KERNEL_FOLDER/tty.c -o $BUILD_FOLDER/tty.o 
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $KERNEL_FOLDER/kernel.c -o $BUILD_FOLDER/kernel.o 
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $KERNEL_FOLDER/isr.c -o $BUILD_FOLDER/isr.o 
$COMPILER $COMPILER_PARAMS -I $ARCH_FOLDER/include -I $KERNEL_FOLDER/include $KERNEL_FOLDER/keyboard.c -o $BUILD_FOLDER/keyboard.o 

OBJECTS=$BUILD_FOLDER"/*"
$LINKER $LINKER_PARAMS -T $KERNEL_FOLDER/linker.ld -o $DIST_FOLDER/myos.bin $OBJECTS

mkdir -p isodir/boot/grub
cp $DIST_FOLDER/myos.bin isodir/boot/myos.bin
cp ./grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o $DIST_FOLDER/myos.iso isodir
rm -rf isodir
