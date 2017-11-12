#!/bin/bash
CPP = g++
CPP_tag = -std=c++11 -g -O3 -msse3

#INCLUDEPATH = -I/usr/local/include/ -I/usr/include -I./ps-lite/src -I./ps-lite/deps/include -I./dmlc-core/include/dmlc -I./thirdparty/librdkafka-master/src-cpp
INCLUDEPATH = -I/usr/local/include/ -I/usr/include -I./ps-lite/deps/include -I./ps-lite/include

#LIBRARY = /usr/local/lib/librdkafka++.a /usr/local/lib/librdkafka.a ./ps-lite/deps/lib/libglog.a ./ps-lite/deps/lib/libprotobuf.a ./ps-lite/deps/lib/libgflags.a ./ps-lite/deps/lib/libzmq.a ./ps-lite/deps/lib/libcityhash.a ./ps-lite/deps/lib/liblz4.a ./ps-lite/build/libps.a ./dmlc-core/libdmlc.a -lz -lpthread -lssl -lcrypto
LIBRARY = ./ps-lite/deps/lib/libprotobuf.a ./ps-lite/deps/lib/libprotobuf-lite.a ./ps-lite/deps/lib/libprotoc.a ./ps-lite/build/libps.a 


a.o: src/main.cpp 
	$(CPP) $(CPP_tag) $(INCLUDEPATH) -c src/main.cpp

clean:
	rm -f *.o
