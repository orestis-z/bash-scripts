#!/bin/bash

cp -avr ./to_be_copied/.profile ~/.profile
cp -avr ./to_be_copied/.bashrc ~/.bashrc
cp -avr ./to_be_copied/.gitconfig ~/.gitconfig
cp -avr ./to_be_copied/mount_android.sh /opt/android-sdk/tools/mount.sh
chmod u+x /opt/android-sdk/tools/mount.sh
cp -avr ./to_be_copied/umount_android.sh /opt/android-sdk/tools/umount.sh
chmod u+x /opt/android-sdk/tools/umount.sh
