#!/bin/bash
set -e
./autogen.sh
./configure --prefix=${WSFC_HOME} --enable-static=no --with-axis2=${WSFC_HOME}/include/axis2-1.6.0
make
make install
