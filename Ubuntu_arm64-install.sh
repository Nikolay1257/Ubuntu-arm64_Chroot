#!/bin/bash

mkdir /data/local/Ubuntu
chmod 777 /data/local/Ubuntu
cp ubuntu-base-22.04-base-arm64.tar.gz /data/local/Ubuntu/
cd /data/local/Ubuntu/
tar -xzvf /data/local/Ubuntu/ubuntu-base-22.04-base-arm64.tar.gz
rm /data/local/Ubuntu/ubuntu-base-22.04-base-arm64.tar.gz
cp /data/data/com.termux/files/home/Ubuntu-arm64_Chroot/main.sh /data/local/Ubuntu/

mount proc -t proc ./proc
mount sys -t sysfs ./sys
mount --bind /dev ./dev
mount --bind /dev/pts ./dev/pts

chroot ./ /usr/bin/env -i HOME=/root TERM="$TERM" /bin/bash --login
