#!/usr/bin/env bash
cp config_diff .config
make defconfig
FORCE_UNSAFE_CONFIGURE=1 make
