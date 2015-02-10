#!/bin/bash

./autogen.sh
./configure --prefix=${WSFC_HOME} --enable-static=no --enable-tests=no
make 
make install

