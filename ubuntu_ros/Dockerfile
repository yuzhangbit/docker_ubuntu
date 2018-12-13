
FROM osrf/ros:kinetic-desktop-xenial

ENV DEBIAN_FRONTEND="noninteractive"

COPY * /tmp/

RUN cp /tmp/99fixbadproxy /etc/apt/apt.conf.d/99fixbadproxy && \
    apt-get update -y && \
    apt-get -y install \
    apt-utils \
    locales \
    apt-transport-https \
    debconf-utils \
    git \
    wget \
    sudo && \
    dpkg-reconfigure locales &&\
    addgroup --gid 1000 ${USER} && \
    adduser --disabled-password --gecos '' --uid 1000 --gid 1000 ${USER} && \
    adduser --uid 1000 --gid 1000 ${USER} sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
    
USER robot
