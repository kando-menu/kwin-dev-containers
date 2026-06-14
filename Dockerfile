# Ubuntu version (e.g. 22.04, 23.04, ...) can be passed using --build-arg=ubuntu_version=...
ARG ubuntu_version=latest
FROM ubuntu:${ubuntu_version}

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        cmake \
        ninja-build \
        pkg-config \
        git \
        extra-cmake-modules \
        kwin-dev \
        libdrm-dev \
        libwayland-dev \
        libxkbcommon-dev \
        libxcb1-dev \
        libxcb-util-dev \
        libgl1-mesa-dev \
        libinput-dev \
        qt6-base-dev && \
    rm -rf /var/lib/apt/lists/*
