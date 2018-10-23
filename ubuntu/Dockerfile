FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en" \
    LC_ALL="en_US.UTF-8" 

COPY * /tmp/

RUN cp /tmp/99fixbadproxy /etc/apt/apt.conf.d/99fixbadproxy && \
    apt-get -y update && \
    apt-get -y install \
    tzdata \
    lsb-release \
    apt-utils \
    apt-transport-https \
    debconf-utils \
    git \
    vim \
    wget \
    sudo &&\
    rm -rf /var/lib/apt/lists/* &&\
    rm -rf /tmp/*
