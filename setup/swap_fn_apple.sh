#!/bin/sh
echo options hid_apple fnmode=2 | tee -a /etc/modprobe.d/hid_apple.conf
update-initramfs -u -k all
