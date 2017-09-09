#!/bin/bash
if [ ${#1} -gt 0 ]; then
  umount -l /media/orestis/$1/CACHE
  umount -l /media/orestis/$1/SD_CARD
  umount -l /media/orestis/$1/USER_DATA
  umount -l /media/orestis/$1/USER_DATA_QEMU

  rm -rf  /media/orestis/$1
else
  echo 'enter device name'
fi
