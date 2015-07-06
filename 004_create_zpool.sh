#!/bin/bash

# get a list of ids for the raid0 harddrives
DRIVES=$(ls -l /dev/disk/by-id/ | grep sd[bcdef] | grep scsi | grep -v -- '-part' | awk '{print $9}' | sed 's/^/\/dev\/disk\/by-id\//g' | tr "\n" " ")

# create a zpool
zpool create -df -o ashift=12 -O compression=on storage raidz2 $DRIVES

# upgrade the pool (can be achieved by deleting -d in command above)
zpool upgrade storage

# create an additional zfs device
zfs create storage/neurobio

# set lz4 as compression method for storage/neurobio
zfs set compression=lz4 storage/neurobio
