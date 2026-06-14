# Fedora version (e.g. 39, 40, 41, ...) can be passed using --build-arg=version=...
ARG version=latest
FROM registry.fedoraproject.org/fedora:${version}

RUN dnf install -y \
        gcc \
        gcc-c++ \
        make \
        cmake \
        ninja-build \
        pkgconf-pkg-config \
        git \
        extra-cmake-modules \
        kwin-devel \
        libdrm-devel \
        libepoxy-devel \
        wayland-devel \
        libxkbcommon-devel \
        libxcb-devel \
        xcb-util-devel \
        mesa-libGL-devel \
        libinput-devel \
        qt6-qtbase-devel && \
    dnf clean all