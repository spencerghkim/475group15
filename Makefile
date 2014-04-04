

PATH := /usr/um/gcc-4.7.0/bin:$(PATH)
LD_LIBRARY_PATH := /usr/um/gcc-4.7.0/lib64
LD_RUN_PATH := /usr/um/gcc-4.7.0/lib64

DEBUG = -g

FLAGS = -Wall -Wvla -Wextra -pedantic -std=c++11
OFILES = ProcessData.o pager.o vm_pager.o
HEADERS = pager.h ProcessData.h VirtualPage.h vm_pager.h 
TESTHEADERS = libvm_app.a -ldl

all: speck_openssl perfTest
#all: main2

debug: FLAGS += -g
debug: all


main: uberzahl.cpp uberzahl.h main.cpp
	g++ $(FLAGS) uberzahl.cpp main.cpp -o main.out
main2: uberzahl.cpp uberzahl.h main2.cpp
	g++ $(FLAGS) uberzahl.cpp main2.cpp -o main2.out

exampleSpeck: exampleSpeck.cpp
	g++ $(FLAGS) exampleSpeck.cpp -o exampleSpeck.out

speck_openssl: speck_openssl.cpp uberzahl.h uberzahl.cpp
	g++ $(FLAGS) uberzahl.cpp speck_openssl.cpp -o speck_openssl.out /usr/lib64/libcrypto.so

perfTest: perfTest.cpp 
	g++ $(FLAGS) perfTest.cpp -o perfTest.out


clean:
	rm -f *.o *.out core.*
