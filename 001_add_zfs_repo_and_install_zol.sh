#!/bin/bash

# This installation is based on the instruction on: https://wiki.ubuntuusers.de/ZFS_on_Linux?redirect=no

# install python-software-properties, which contains the apt-add-repository command
apt-get install --yes python-software-properties

# add the ZoL repository
apt-add-repository --yes ppa:zfs-native/stable

# update package list
apt-get update

# install ZoL
apt-get install --yes ubuntu-zfs
