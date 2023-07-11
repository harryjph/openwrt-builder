#!/usr/bin/env bash
cp config_diff .config
make defconfig
if [[ $DEBUG ]]; then
    FORCE_UNSAFE_CONFIGURE=1 make -j1 V=s
else
    FORCE_UNSAFE_CONFIGURE=1 make -j$(nproc)
fi
