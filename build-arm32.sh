sudo apt install build-essential \
binutils-multiarch \
g++-11-arm-linux-gnueabihf \
gcc-11-arm-linux-gnueabihf \
libc6-dev:i386 \
libstdc++-11-dev \
gcc-arm-linux-gnueabihf \
g++-arm-linux-gnueabihf \
gcc-11-multilib \
g++-11-multilib
python3 ${JAVET_HOME}/scripts/python/patch_node_build.py -p ${NODE_HOME}
CC=arm-linux-gnueabihf-gcc CXX=arm-linux-gnueabihf-g++ CC_host="gcc -m32" CXX_host="g++ -m32" ./configure --dest-cpu=arm --cross-compiling --dest-os=linux --with-arm-float-abi=hard --enable-static --without-intl
python3 ${JAVET_HOME}/scripts/python/patch_node_build.py -p ${NODE_HOME}
make -j8