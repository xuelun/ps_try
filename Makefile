#!/bin/bash
CPP = g++
CPP_tag = -std=c++11 -g -O3 -msse3

INCLUDEPATH = -I./ps-lite/include -I./ps-lite/deps/include

LIBRARY = ./ps-lite/deps/lib/libprotobuf.a ./ps-lite/deps/lib/libprotobuf-lite.a ./ps-lite/deps/lib/libprotoc.a ./ps-lite/build/libps.a 

all: main

dump: main.o $(LIBRARY)
	$(CPP) $(CPP_tag) -o $@ $^ $(LIBRARY)
	rm main.o
	mv main bin

main.o: src/main.cpp
	$(CPP) $(CPP_tag) $(INCLUDEPATH) -c src/main.cpp

clean:
	rm -f *.o
	rm -rf bin
