#!/bin/bash

# export CFLAGS="${CFLAGS} -I${PREFIX}/include/boost"
# export CXXFLAGS="${CXXFLAGS} -I${PREFIX}/include/boost"
# export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib"

if [ "${UNAME}" == "Linux" ]; then
  export CXXFLAGS=${CXXFLAGS/" -std=c++17"/}
fi

mkdir build
cd build
../configure \
    --prefix=$PREFIX \
    --with-boost-libdir=${PREFIX}/lib
make
make install
