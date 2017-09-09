#!/bin/sh

VER=4.8
SRCDIR=~/git/linux-$VER.y
git worktree add $SRCDIR/ v$VER.17

export ARCH=x86
make -j$(nproc) -C $SRCDIR all
