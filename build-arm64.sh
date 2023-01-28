sudo apt install build-essential \
binutils-multiarch \
g++-11-aarch64-linux-gnu \
gcc-11-aarch64-linux-gnu \
libc6-dev:i386 \
libstdc++-11-dev \
gcc-aarch64-linux-gnu \
g++-aarch64-linux-gnu \
gcc-11-multilib \
g++-11-multilib
python3 ${JAVET_HOME}/scripts/python/patch_node_build.py -p ${NODE_HOME}
CC=aarch64-linux-gnu-gcc CXX=aarch64-linux-gnu-g++ CC_host="gcc -m64" CXX_host="g++ -m64" ./configure --dest-cpu=arm64 --cross-compiling --dest-os=linux --with-arm-float-abi=hard --enable-static --without-intl
python3 ${JAVET_HOME}/scripts/python/patch_node_build.py -p ${NODE_HOME}
make -j8