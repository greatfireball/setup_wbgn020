#!/bin/bash

# create software folder
mkdir -p /software/fiji/

cd /software/fiji/

# download todays version
wget http://jenkins.imagej.net/job/Stable-Fiji/lastSuccessfulBuild/artifact/fiji-linux64.tar.gz

# untar
tar xzf fiji-linux64.tar.gz


