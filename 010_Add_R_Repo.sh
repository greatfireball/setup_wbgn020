#!/bin/bash

## Add GNU R Mirror
echo "deb http://ftp5.gwdg.de/pub/misc/cran/bin/linux/ubuntu precise/" > /etc/apt/sources.list.d/gnur.sources.list

## Add GNU R Signing Key
gpg --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

