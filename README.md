vagrant-packer
==============

http://www.packer.io/ script to build a basebox for http://www.vagrantup.com to run on https://www.virtualbox.org .

----------
HOW TO USE
----------

 - Install Virtualbox
   https://www.virtualbox.org/wiki/Downloads
 
 - Create a new directory example *packer_build*.
 
 - Download the packer 
   http://www.packer.io/downloads.html

 - Clone this git repository
  ``git clone https://github.com/reinblau/vagrant-packer.git``

 - Download Debian 7.4.0
   http://cdimage.debian.org/debian-cd/7.4.0/amd64/iso-cd/debian-7.4.0-amd64-netinst.iso

 - Navigate into the vagrant-packer directory
 
 - Run the command
   ``/pathToPacker/packer build dockerbase.json``
 - After the packer is ready it creates a file called *packer_virtualbox-iso_virtualbox.box* 

