#!/bin/bash
set -e  # exit on first error
update_sourceslist()
{
cd /etc/apt
mv sources.list sources.list.bak
touch sources.list
sh -c 'echo "deb http://mirror.bit.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb http://mirror.bit.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirror.bit.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirror.bit.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
##测试版源
deb http://mirror.bit.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
# 源码
deb-src http://mirror.bit.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirror.bit.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirror.bit.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirror.bit.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
##测试版源
deb-src http://mirror.bit.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse" >> sources.list'
apt-get -qqy update
apt-get -qqy install lsb-release
}

update_ros_mirror()
{
sh -c '. /etc/lsb-release && echo "deb http://mirrors.ustc.edu.cn/ros/ubuntu/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
}

update_sourceslist
update_ros_mirror
