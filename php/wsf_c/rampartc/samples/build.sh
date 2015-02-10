#!/bin/bash
./autogen.sh
./configure --prefix=${WSFC_HOME} --enable-static=no --with-axis2=${WSFC_HOME}/include/axis2-1.6.0
make
make install
cd secpolicy
sh deploy.sh scenario5
cd ../
echo "Copying server's axis2.xml to " $WSFC_HOME
cp ./data/server_axis2.xml $WSFC_HOME/axis2.xml
echo "samples successfuly build. To run echo client cd to client/sec_echo and run update_n_run.sh"
