FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

COPY * /tmp/

RUN cp /tmp/99fixbadproxy /etc/apt/apt.conf.d/99fixbadproxy && \
    apt-get -y update && \
    apt-get -y install \
    tzdata \
    locales \
    lsb-release \
    apt-utils \
    apt-transport-https \
    debconf-utils \
    git \
    vim \
    wget \
    sudo &&\
    dpkg-reconfigure locales && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
