#!/bin/bash

set -uxo pipefail

MOUNT_DIR=/mnt/disks/${parachain}
DEVICE_NAME=/dev/sdb

set -e
sudo mkdir -p /mnt/disks/data /mnt/disks/datas $MOUNT_DIR
sudo mount -o discard,defaults $DEVICE_NAME $MOUNT_DIR
sudo chmod a+w $MOUNT_DIR

echo UUID=$(sudo blkid -s UUID -o value $DEVICE_NAME) $MOUNT_DIR ext4 discard,defaults,nofail 0 2 | sudo tee -a /etc/fstab