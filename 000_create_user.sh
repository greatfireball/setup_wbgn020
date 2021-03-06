#!/bin/bash

# install whois package required for mkpasswd
apt-get update && apt-get install whois

# Add the group genomics
addgroup --gid 1001 genomics

# Add Frank with a new password
PASS=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
ENCRYPTED=$(echo "$PASS" | mkpasswd -m sha-512 --stdin)
useradd  -m -s /bin/bash -c "Frank Foerster" -g genomics -u 1060 -p "$ENCRYPTED" frf53jh

# add user to sudo group
sudo adduser frf53jh sudo

# Finally set the password to expired
passwd frf53jh --expire
# And print the account name and the password
echo "frf53jh $PASS"

## Install user Marie

# Add the group neurobio
addgroup --gid 1006 neurobio

# Add Frank with a new password
PASS=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
ENCRYPTED=$(echo "$PASS" | mkpasswd -m sha-512 --stdin)
useradd  -m -s /bin/bash -c "Marie Hieke" -g neurobio -u 2000 -p "$ENCRYPTED" mah15aa

# And print the account name and the password
echo "mah15aa $PASS"


