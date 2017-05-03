vagrant-packer
==============

[packer.io](http://www.packer.io/) script to build a basebox with installed [Docker](https://docs.docker.com/engine/installation/debian/), [docker-compose](https://docs.docker.com/compose/) for [vagrant](http://www.vagrantup.com).

------------
Requirements
------------
* Installed [Virtualbox](https://www.virtualbox.org/wiki/Downloads, "Virtualbox download page") (tested with 5.1.22-115126)
* Installed [Packer](http://www.packer.io/downloads.html "Packer.io Download page") (tested with v1.0.0)

----------
HOW TO USE
----------

 - Clone this git repository into the directory *packer_build*

  ``git clone https://github.com/reinblau/vagrant-packer.git``

 - Navigate into the *vagrant-packer* directory

  ``cd vagrant-packer``

 - Run the command

  ``packer build dockerhost_local.json``

 - After the packer is ready it creates a file called *packer_virtualbox-iso_virtualbox.box* which can be used in vagrant

 - Add the box to vagrant

  ``vagrant box add --name=docker packer_virtualbox-iso_virtualbox.box``

 - Start new vagrant box

   ``vagrant up``
