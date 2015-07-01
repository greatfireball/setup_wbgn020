#!/bin/bash

# install parted
apt-get update && apt-get install parted

# create a GTP table
parted --script --align=opt /dev/sdb mklabel gpt
# Add a partition starting at 8 MB and fill the whole hd
parted --script --align=opt /dev/sdb mkpart primary 8MB 100%

# create a file system
mkfs.ext4 /dev/sdb1

# create the mount point
mkdir -p /storage

# mount the drive
mount /dev/sdb1  /storage/

# estimate the UUID for our drive
eval $(sudo blkid | grep sdb1 | cut -f 2 -d ":")

## This should result in setting of UUID and TYPE as Env varibles

# and add the drive to the fstab to mount it after reboot

date +"#%Y-%m-%dT%H:%M:%S Added by install script to enable remounting on reboot
UUID=$UUID /storage $TYPE defaults,errors=remount-ro 0 1" >> /etc/fstab
