#!/bin/bash

# Stupid shell script to compile kernel, nothing fancy

# Exports all the needed things Arch, SubArch and Cross Compile
export ARCH=arm
echo 'exporting Arch'
export SUBARCH=arm
echo 'exporting SubArch'
export CROSS_COMPILE=/home/josh/Android/toolchain/4.7/bin/arm-linux-androideabi-
echo 'exporting Cross Compile'

# Make sure build is clean!
echo 'Cleaning build'
make clean

# Generates a new .config and exists
if [ "$1" = "config" ] ; then
echo 'Making defconfig for Mako'
make mako_defconfig
exit
fi

# Exports kernel local version? Not sure yet.
#echo 'Exporting kernel version'
#export LOCALVERSION='SlimTest_1.0'

# Lets go!
echo 'Lets start!'
make -j$1
