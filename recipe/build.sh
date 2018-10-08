#!/bin/bash

export CFLAGS="${CFLAGS} -I${PREFIX}/include/boost"
export CXXFLAGS="${CXXFLAGS} -I${PREFIX}/include/boost"
export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"

autoreconf -i
mkdir build
cd build
../configure \
    --prefix=$PREFIX
make
make install
