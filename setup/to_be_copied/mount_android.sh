#!/bin/bash

if [ ${#1} -gt 0 ]; then
    if [ ! -d /media/orestis/$1 ]; then
        mkdir /media/orestis/$1
        mkdir /media/orestis/$1/CACHE
        mkdir /media/orestis/$1/SD_CARD
        mkdir /media/orestis/$1/USER_DATA
        mkdir /media/orestis/$1/USER_DATA_QEMU
    fi

    mount -o loop ~/.android/avd/$1.avd/cache.img /media/orestis/$1/CACHE
    mount -o loop ~/.android/avd/$1.avd/sdcard.img /media/orestis/$1/SD_CARD
    mount -o loop ~/.android/avd/$1.avd/userdata.img /media/orestis/$1/USER_DATA
    mount -o loop ~/.android/avd/$1.avd/userdata-qemu.img /media/orestis/$1/USER_DATA_QEMU
else
  echo 'enter device name'
fi
