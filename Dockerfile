# Ubuntu version (e.g. 22.04, 23.04, ...) can be passed using --build-arg=ubuntu_version=...
ARG ubuntu_version=latest
FROM ubuntu:${ubuntu_version}

RUN apt-get update && \
    apt-get install -y extra-cmake-modules kwin-dev qt6-base-dev && \
    rm -rf /var/lib/apt/lists/*
