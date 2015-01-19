#!/bin/bash

set -ex

ls -al /opt/jsbsim

if [ -f "/opt/jsbsim/lib/libJSBSim.so.0" ]; then
	echo "JSBSim already built";
	exit 0;
fi

cd JSBSim-1.0

./autogen.sh
./configure --enable-libraries --enable-shared --prefix=/opt/jsbsim
make -j 5
make install