#!/bin/bash
# Set up Vagrant.

# Install vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys \
  'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant: /home/vagrant/.ssh

# Set up password-less sudo for the vagrant user
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/99_vagrant

chmod 440 /etc/sudoers.d/99_vagrant
# vagrant prefers no tty
echo "Defaults !requiretty" >> /etc/sudoers

# Fix warning "stdin: is not a tty": https://github.com/mitchellh/vagrant/issues/1673
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile
