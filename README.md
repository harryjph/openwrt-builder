# OpenWRT Builder

This is a minimal project that builds OpenWRT using a custom configuration in Docker, so you don't have to download any additional dependencies.

## Editing the config

Run: `./edit_config.sh`.
The config is saved as a file named `config`.

## Building the Image

Run: `./build.sh`.
The output will be in `build/bin/targets`.
