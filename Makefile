#!/bin/bash
CPP=g++
CPP_tag=-std=c++11 -g -O3 -msse3

CUR_DIR=$(shell pwd)

INCLUDEPATH=-I${CUR_DIR}/ps_lite/include/ -I${CUR_DIR}/ps_lite/deps/include

LIBRARY=${CUR_DIR}/ps_lite/deps/lib/libprotobuf.a ./ps_lite/deps/lib/libprotobuf-lite.a ./ps_lite/deps/lib/libprotoc.a ./ps_lite/build/libps.a 

all: main

main: main.cpp
	$(CPP) $(CPP_tag) $(INCLUDEPATH) $(LIBRARY) -c main.cpp

clean:
	rm -f *.o
	rm -rf bin
