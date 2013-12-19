CFLAGS=-I./include/ -I./kernel-headers/

all:
	$(CC) $(CFLAGS) -c ion.c -o ion.o
	$(AR) rcs libion.a ion.o
	$(CC) $(CFLAGS) ion.c ion_test.c -o ion_test
	$(MAKE) -C tests
clean:
	rm -f *.o libion.a ion_test
	$(MAKE) -C tests clean
