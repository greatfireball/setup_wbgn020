#!/bin/bash

# This installation is based on the instruction on: https://wiki.ubuntuusers.de/ZFS_on_Linux?redirect=no
apt-add-repository --yes ppa:zfs-native/stable
apt-get update
apt-get install --yes ubuntu-zfs
