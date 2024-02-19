#!/bin/bash

set -uxo pipefail

MOUNT_DIR=/mnt/disks/chaindisk
DEVICE_NAME=/dev/sdb

set -e
sudo mkdir -p /mnt/disks/data $MOUNT_DIR
sudo mkfs.ext4 -m 0 -F -E lazy_itable_init=0,lazy_journal_init=0,discard $DEVICE_NAME
sudo fsck.ext4 -tvy $DEVICE_NAME
sudo mount -t ext4  -o discard,defaults $DEVICE_NAME $MOUNT_DIR
sudo chmod a+w $MOUNT_DIR
echo UUID=$(sudo blkid -s UUID -o value $DEVICE_NAME) $MOUNT_DIR ext4 discard,defaults,nofail 0 2 | sudo tee -a /etc/fstab