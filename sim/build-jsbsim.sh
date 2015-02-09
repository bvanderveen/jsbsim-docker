#!/bin/bash -ex

# called by build.sh. builds the jsbsim shared library. 

if [ -f "/opt/jsbsim/lib/libJSBSim.so.0" ]; then
	echo "JSBSim already built, skipping";
	exit 0;
fi

cd JSBSim-1.0

./autogen.sh --enable-libraries --enable-shared --prefix=/opt/jsbsim
make -j 5
make install
