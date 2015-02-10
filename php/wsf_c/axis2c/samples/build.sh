#!/bin/bash

./autogen.sh

./configure --prefix=${WSFC_HOME}
make -j 10
make install

