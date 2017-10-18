#!/bin/bash
set -o nounset
if test -f .vbox_version ; then

  # Install dkms for dynamic compiles

  apt-get install -y dkms

  # If libdbus is not installed, virtualbox will not autostart
  apt-get -y install --no-install-recommends libdbus-1-3

  # Install the VirtualBox guest additions
  VBOX_ISO=VBoxGuestAdditions.iso
  mkdir /tmp/isomount
  mount -o loop $VBOX_ISO /tmp/isomount
  yes|sh /tmp/isomount/VBoxLinuxAdditions.run
  umount /tmp/isomount
  rm $VBOX_ISO

  # Symlink vbox guest additions. Fix for https://github.com/mitchellh/vagrant/issues/3341
fi
