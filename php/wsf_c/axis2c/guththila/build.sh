./autogen.sh
./configure --prefix=${WSFC_HOME} --with-axis2_util=${WSFC_HOME}/include
make
make install
