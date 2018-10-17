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
apt-get update
}

update_sourceslist
