# This Dockerfile builds a custom OpenWRT image. Currently customized to run on my RPi CM4 router.
# Based on https://viniciuspaes.com/raspberry-pi/how-to-build-custom-openwrt-image-raspberry-pi-router/
FROM debian:latest

# Install Prerequisites
RUN apt-get update && apt-get install -y build-essential clang flex bison g++ gawk gcc-multilib g++-multilib gettext git libncurses5-dev libssl-dev python3-distutils rsync unzip zlib1g-dev file wget

# Get OpenWRT Source
WORKDIR /openwrt
RUN git clone https://git.openwrt.org/openwrt/openwrt.git .

# Check out the a version tag. See https://git.openwrt.org/?p=openwrt/openwrt.git;a=tags for all available tags
RUN git checkout v22.03.5

# Install OpenWRT Dependencies
RUN ./scripts/feeds update -a && ./scripts/feeds install -a

# Install Helper Scripts
COPY helpers/menuconfig.sh .
COPY helpers/build.sh .
