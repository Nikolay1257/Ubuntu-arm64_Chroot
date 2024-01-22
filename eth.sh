#!/bin/bash

passwd

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

cat >/etc/mtab <<EOF
rootfs / rootfs rw 0 0
EOF

echo "127.0.0.1 localhost" >/etc/hosts
echo "nameserver 8.8.8.8" >/etc/resolv.conf
