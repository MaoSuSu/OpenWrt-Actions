#!/bin/bash

echo "Build Firmware"

git clone https://github.com/tuanqing/mknop.git mknop
mkdir -p mknop/openwrt
cp -r -f dist/openwrt-armvirt-64-default-rootfs.tar.gz mknop/openwrt/
cd mknop
sudo ./gen_openwrt -d -k 5.4.93 -m phicomm-n1
mv out/phicomm-n1/*.img ../dist/
