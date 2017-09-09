#!/bin/sh

LINUX_DIR=~/git/linux

export ARCH=x86
export KBUILD_OUTPUT=~/git/linux-x86/
make -C $LINUX_DIR -j$(nproc) all
