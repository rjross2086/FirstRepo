#!/bin/bash
sudo cat << 'EOF' > /etc/file.txt
# /etc/nsswitch.conf
#
# Example configuration of GNU Name Service Switch functionality.
# If you have the `glibc-doc-reference' and `info' packages installed, try:
# `info libc "Name Service Switch"' for information about this file.

passwd:         compat
group:          compat
replacement-line
gshadow:        files

hosts:          files cache dns
networks:       files

protocols:      db files
services:       db files
ethers:         db files
rpc:            db files

netgroup:       nis
EOF

sudo cp /etc/nsswitch.conf /etc/old_nsswitch.conf
sudo mv /etc/file.txt /etc/nsswitch.conf

echo "End of Script"