set -ex

mkdir build
cd build

cmake ${CMAKE_ARGS} -LAH               \
    -DCMAKE_PREFIX_PATH=${PREFIX}      \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}   \
    -DCMAKE_INSTALL_LIBDIR="lib"       \
    ..

make -j${CPU_COUNT}
make install
