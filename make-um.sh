#!/bin/sh

export ARCH=um
export KBUILD_OUTPUT=/home/thomas/git/linux-um/
make -j$(nproc) all
