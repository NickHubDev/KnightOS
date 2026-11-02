ASM = nasm
SIMPLE_KERNEL = s_kernel.asm
BIN_KERNEL = simple_k
QEMU = qemu-system-x86_64

build:
	$(ASM) -f bin $(SIMPLE_KERNEL) -o simple_k
	$(QEMU) -drive format=raw,file=$(BIN_KERNEL) -display gtk
clear:
	rm -rf "simple_k"
