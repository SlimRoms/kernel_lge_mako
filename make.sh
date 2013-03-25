#!/bin/bash


export ARCH=arm
echo 'exporting Arch'
export SUBARCH=arm
echo 'exporting SubArch'
export CROSS_COMPILE=/home/josh/Android/toolchain/4.6/bin/arm-linux-androideabi-
echo 'exporting Cross Compile'
echo 'Cleaning build'
make clean
if [ "$2" = "config" ] ; then
echo 'Making defconfig for Mako'
make mako_defconfig
fi
echo 'Lets start!'
make -j$1
