vagrant-packer
==============

http://www.packer.io/ script to build a basebox for http://www.vagrantup.com.

----------
HOW TO USE
----------

 - Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads, "Virtualbox download page")

 - Create a new directory example *packer_build*.

 - Download [Packer](http://www.packer.io/downloads.html, "Packer.io Download page") into the directory *packer_build*

 - Clone this git repository into the directory *packer_build*
  ``git clone https://github.com/reinblau/vagrant-packer.git``
 - Or [download](https://github.com/reinblau/vagrant-packer/archive/master.zip, "Direct Link: vagrant-packer Download") it into the directory *packer_build* and unzip the download and renamed the directory into *vagrant-packer*

 - [Download]( http://cdimage.debian.org/debian-cd/7.4.0/amd64/iso-cd/debian-7.4.0-amd64-netinst.iso "Debian 7.4.0 ISO-Image Download") Debian 7.4.0 into the directory *vagrant-packer*

 - Navigate into the *vagrant-packer* directory

 - Run the command
   ``./../0.5.2_darwin_amd64/packer build dockerhost.json``

 - After the packer is ready it creates a file called *packer_virtualbox-iso_virtualbox.box* which can be used in vagrant

 - Example usage for vagrant is to create a docker host. See https://github.com/reinblau/vagrant-docker for more information.
