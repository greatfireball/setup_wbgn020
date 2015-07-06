#!/bin/bash

apt-add-repository --yes ppa:zfs-native/stable
apt-get update
apt-get install --yes ubuntu-zfs
