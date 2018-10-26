
FROM osrf/ros:kinetic-desktop-xenial

ENV DEBIAN_FRONTEND="noninteractive"

COPY * /tmp/

RUN apt-get update -y && \
    apt-get -y install \
    apt-utils \
    locales \
    apt-transport-https \
    debconf-utils \
    git \
    wget \
    sudo && \
    dpkg-reconfigure locales &&\
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
