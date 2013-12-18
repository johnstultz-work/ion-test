CFLAGS=-I./include/

all:
	gcc $(CFLAGS) -c ion.c -o ion.o
	ar rcs libion.a ion.o
	gcc $(CFLAGS) ion.c ion_test.c -o ion_test
	$(MAKE) -C tests
clean:
	rm -f *.o libion.a ion_test
	$(MAKE) -C tests clean
