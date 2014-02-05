
set -x

cd JSBSim-1.0
./autogen.sh
./configure --enable-libraries --enable-shared --prefix=/opt/JSBSim-1.0
make -j 5
make install
mkdir /opt/JSBSim-1.0/bin
cp src/JSBSim /opt/JSBSim-1.0/bin/JSBSim