#!/bin/bash
#If your client repository is different, change the value.
CLIENT_REPO="$WSFC_HOME"

#RUN
./sec_echo http://localhost:9090/axis2/services/sec_echo $CLIENT_REPO

