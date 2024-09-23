CC = arm-none-eabi-gcc

CFLAGS = -c -mcpu=$(MACH)

MACH = cortex-m3 -std=gnu11 -mthumb -Wall

LDFLAGS = -T stm32f103_ls.ld -nostdlib -Wl,-Map=final.map 

main.o:main.c
	$(CC) $(CFLAGS) $^ -o $@
	
GPIO_Prog.o: GPIO_Prog.C
	$(CC) $(CFLAGS) $^ -o $@
	
STM32F103c8_Startup.o: STM32F103c8_Startup.c 
		$(CC) $(CFLAGS) $^ -o $@
final.elf: main.o GPIO_Prog.o RCC_prog.o STM32F103c8_Startup.o 
	$(CC) $(LDFLAGS) $^ -o $@
	
all: main.o GPIO_Prog.o STM32F103c8_Startup.o RCC_prog.o final.elf

clean:
	rm -rf *.o *.elf