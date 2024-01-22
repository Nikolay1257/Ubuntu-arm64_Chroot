#!/bin/bash

mount proc -t proc ./proc
mount sys -t sysfs ./sys
mount --bind /dev ./dev
mount --bind /dev/pts ./dev/pts

chroot ./ /usr/bin/env -i HOME=/root TERM="$TERM" /bin/bash --login
