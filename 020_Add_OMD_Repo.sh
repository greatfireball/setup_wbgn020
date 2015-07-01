#!/bin/bash

## Add OMD Mirror Repository
echo 'deb http://labs.consol.de/repo/stable/ubuntu trusty main' > /etc/apt/sources.list.d/omd.list

## Add OMD Mirror Key
gpg --keyserver keyserver.ubuntu.com --recv-keys F8C1CA08A57B9ED7
gpg --armor --export F8C1CA08A57B9ED7 | apt-key add -

apt-get update
