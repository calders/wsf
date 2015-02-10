#!/bin/bash

./autogen.sh

if test -z ${WSFC_HOME}
then
    WSFC_HOME=`pwd`/../deploy
fi

export WSFC_HOME

./configure --prefix=${WSFC_HOME} --enable-tests=no 
make
