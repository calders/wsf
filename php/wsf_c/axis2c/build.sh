#!/bin/bash
set -e
sh autogen.sh
WSFC_HOME=${WSFC_HOME:=`pwd`/deploy}

export WSFC_HOME

echo "WSFC_HOME = ${WSFC_HOME}"

sh configure --prefix=${WSFC_HOME} --enable-tests=yes 
make -j 10 
make install

cd samples
sh build.sh

cd ..
