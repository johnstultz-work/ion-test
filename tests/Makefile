CFLAGS=-std=c++0x -I../include/ -I../kernel-headers/
LDFLAGS=-L/usr/src/gtest/ -lgtest -lpthread -L../ -lion

BASELIBS=ion_test_fixture.o gtest_main.o

INFILES=allocate_test.cpp device_test.cpp map_test.cpp formerly_valid_handle_test.cpp invalid_values_test.cpp exit_test.cpp

OUTFILE=ion-unit-tests

all: ion_test_fixture.o gtest_main.o $(INFILES)
	$(CXX) $(CFLAGS) $(BASELIBS) $(INFILES)  $(LDFLAGS) -o $(OUTFILE)

ion_test_fixture.o: ion_test_fixture.cpp
	$(CXX) $(CFLAGS) -c ion_test_fixture.cpp -o ion_test_fixture.o

gtest_main.o:
	$(CXX) $(CFLAGS) -c /usr/src/gtest/src/gtest_main.cc -o gtest_main.o


clean:
	rm -f *.o $(OUTFILE)
