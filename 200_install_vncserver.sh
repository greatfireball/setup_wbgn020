#!/bin/bash

# Following the instructions from 
# http://www.havetheknowhow.com/Configure-the-server/Install-VNC.html

apt-get update

# install Gnome core components
apt-get install --assume-yes gnome-core

# install vncserver
apt-get install --assume-yes vnc4server

