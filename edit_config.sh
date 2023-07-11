#!/usr/bin/env bash

# Ensure that the image has been built
helpers/build_image.sh

if [ ! -f config ]; then
    touch config
else
    # Backup the old config
    cp config config.backup
fi

docker run --rm -it -v "$(pwd)/config:/openwrt/config_diff" openwrt_builder "./menuconfig.sh"
