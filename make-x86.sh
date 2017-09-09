#!/bin/sh

export ARCH=x86
export KBUILD_OUTPUT=/home/thomas/git/linux-x86/
make -j$(nproc) all
