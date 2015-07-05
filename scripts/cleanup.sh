#!/bin/bash
# Clean up
set -o errexit -o nounset -o pipefail

apt-get -y autoremove
apt-get -y clean

# Removing leftover leases and persistent rules
echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*
rm -rf /var/lib/apt/lists/*
# Make sure Udev doesn't block our network
echo "cleaning up udev rules"
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

echo "Adding a 2 sec delay to the interface up, to make the dhclient happy"
echo "pre-up sleep 2" >> /etc/network/interfaces

# Zero free space to aid VM compression
echo "Zeroing free space. Reports 'No space left on device' when complete."
# dd exits with a 1 when the device is full, ignore since this is expected
dd if=/dev/zero of=/EMPTY bs=1M || true
rm -f /EMPTY

# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
sync
