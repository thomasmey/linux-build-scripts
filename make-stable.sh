#!/bin/sh

VER=4.12
LINUX_DIR=~/git/linux
STABLE_DIR=~/git/linux-$VER.y

if [ ! -d "$STABLE_DIR" ]; then
	mkdir -p $STABLE_DIR
fi

git -C $LINUX_DIR worktree add $STABLE_DIR/ v$VER.11

export ARCH=x86
make -j$(nproc) -C $STABLE_DIR all
