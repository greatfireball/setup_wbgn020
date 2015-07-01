#!/bin/bash

# enable check_mk in xinet.d config
sed -i '/disable/s/^\(.*\)disable.*$/\1disable = no/' /etc/xinetd.d/check_mk

# allow usage from monitoring host only
sed -i '/only_from/{s/^\([[:space:]]*\)#/\1/;s/= .*/= 132.187.22.169/}' /etc/xinetd.d/check_mk

# restart service
service xinetd restart
