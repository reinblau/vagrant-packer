#!/bin/bash

echo "Installing Docker from get.docker.com"
echo "------------------------------------"
echo
curl -sSL https://get.docker.com/ | sh
usermod -aG docker vagrant

echo
echo "Installing crane"
echo "------------------------------------"
echo
export VERSION=1.4.0
bash -c "`curl -sL https://raw.githubusercontent.com/michaelsauter/crane/master/download.sh`" && mv crane /usr/local/bin/crane

echo
echo "Installing docker-composer"
echo "------------------------------------"
echo
curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&\
chmod +x /usr/local/bin/docker-compose
docker-compose --version
