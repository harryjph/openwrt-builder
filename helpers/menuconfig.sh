#!/usr/bin/env bash
cp config_diff .config
make defconfig
make menuconfig
scripts/diffconfig.sh > config_diff
