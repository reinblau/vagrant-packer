vagrant-packer
==============

http://www.packer.io/ script to build a basebox for http://www.vagrantup.com to run on https://www.virtualbox.org .

----------
HOW TO USE
----------

 - Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads, "Virtualbox download page") and start it

 - Create a new directory example *packer_build*.
 
 - Download the packer into the directory *packer_build*
   http://www.packer.io/downloads.html

 - Clone this git repository into the directory *packer_build*
  ``git clone https://github.com/reinblau/vagrant-packer.git``
 - Or [download](https://github.com/reinblau/vagrant-packer/archive/master.zip, "Direct Link: vagrant-packer Download") it into the directory *packer_build* and unzip the download and renamed the directory into *vagrant-packer*

 - [Download]( http://cdimage.debian.org/debian-cd/7.4.0/amd64/iso-cd/debian-7.4.0-amd64-netinst.iso, "Debian 7.4.0 ISO-Image Download") Debian 7.4.0 into the directory *vagrant-packer*

 - Navigate into the *vagrant-packer* directory
 
 - Run the command
   ``/pathToPacker/packer build dockerbase.json``
 - After the packer is ready it creates a file called *packer_virtualbox-iso_virtualbox.box* 
