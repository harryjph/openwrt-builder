# OpenWRT Builder

This is a minimal project that builds OpenWRT using a custom configuration in Docker, so you don't have to download any additional dependencies.

## Editing the config

Run: `./edit_config.sh`.
The config is saved as a file named `config`.

## Building the Image

Run: `./build.sh`.
The output will be in `build/bin/targets`.

If you get an error, run `DEBUG=1 ./build.sh` to show all output to debug the error.

## Changing the OpenWRT Version

Modify [this line](https://github.com/harry1453/openwrt-builder/blob/master/Dockerfile#L13)
