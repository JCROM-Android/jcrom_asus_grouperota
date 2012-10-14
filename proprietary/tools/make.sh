#!/bin/sh

tar zxf nakasi-jzo54k-factory-973f190e.tgz
cd nakasi-jzo54k
unzip image-nakasi-jzo54k.zip
cd ../
./simg2img nakasi-jzo54k/system.img system.ext4.img
mkdir system
sudo mount -o loop -t ext4 system.ext4.img system
sync

./make-sub-1.sh

sudo umount system
rmdir system
rm -rf tmp
rm -rf nakasi-jzo54k
rm system.ext4.img

