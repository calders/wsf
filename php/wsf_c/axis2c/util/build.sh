#!/bin/bash

./autogen.sh
./configure --prefix=${WSFC_HOME} --enable-static=no
make 
make install
