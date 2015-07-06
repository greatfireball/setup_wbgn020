#!/bin/bash

# Instructions obtained from http://www.linuxcat.org/showthread.php?tid=68

echo "deb http://hwraid.le-vert.net/ubuntu precise main" > /etc/apt/sources.list.d/hwraid.list

# install key
wget -O - http://hwraid.le-vert.net/debian/hwraid.le-vert.net.gpg.key | apt-key add -

apt-get update && apt-get install --yes megacli megactl megaraid-status
