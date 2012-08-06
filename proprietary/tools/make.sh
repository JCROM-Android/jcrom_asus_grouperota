#!/bin/sh

tar zxf nakasi-jro03d-factory-e102ba72.tgz
cd nakasi-jro03d
unzip image-nakasi-jro03d.zip
cd ../
./simg2img nakasi-jro03d/system.img system.ext4.img
mkdir system
sudo mount -o loop -t ext4 system.ext4.img system
sync

./make-sub-1.sh

sudo umount system
rmdir system
rm -rf tmp
rm -rf nakasi-jro03d
rm system.ext4.img

