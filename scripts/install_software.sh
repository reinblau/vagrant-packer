#!/bin/bash
set -o errexit -o nounset

# https://docs.docker.com/engine/installation/debian/
echo "Installing Docker"
echo "------------------------------------"
echo
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo debian-jessie main > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y docker-engine=1.10.3-0~jessie
usermod -aG docker vagrant
systemctl enable docker

echo
echo "Installing docker-composer"
echo "------------------------------------"
echo
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&\
chmod +x /usr/local/bin/docker-compose
docker-compose --version
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
