CC=gcc
CFLAGS=-I./include/ -I./kernel-headers/ -I/usr/include/

all:
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -c ion.c -o ion.o
	$(CROSS_COMPILE)$(AR) rcs libion.a ion.o
	$(CROSS_COMPILE)$(CC) $(CFLAGS) ion.c ion_test.c -o ion_test
	$(MAKE) -C tests
clean:
	rm -f *.o libion.a ion_test
	$(MAKE) -C tests clean
