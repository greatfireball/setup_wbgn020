#!/bin/bash

cat > /etc/sudoers.d/zfs_snapshot <<EOF

# Allow read-only ZoL commands to be called through sudo
# without a password. Remove the first '#' column to enable.
#
# CAUTION: Any syntax error introduced here will break sudo.
#
# Cmnd alias specification
Cmnd_Alias ZFS_SNAP = \
  /sbin/zfs snapshot

Runas_Alias R_ROOT = root

## User privilege specification
root    ALL=(ALL) ALL

## Members of the admin group may gain root privileges
%adm ALL=(ALL) ALL  # linux
%admin ALL=(ALL) ALL  # linux
%staff ALL=(ALL) ALL  # solaris

## allow any user to use basic read-only ZFS commands
ALL ALL = (R_ROOT) NOPASSWD: ZFS_SNAP

EOF
