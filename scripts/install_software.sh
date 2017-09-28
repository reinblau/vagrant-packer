#!/bin/bash
set -o errexit -o nounset

# https://docs.docker.com/engine/installation/debian/
echo "Installing Docker"
echo "------------------------------------"
echo
apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository \
         "deb [arch=amd64] https://download.docker.com/linux/debian \
         $(lsb_release -cs) \
         stable"
apt-get update
apt-get -y install docker-ce
usermod -aG docker vagrant
systemctl enable docker

echo
echo "Installing docker-composer"
echo "------------------------------------"
echo
curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-"$(uname -s)"-"$(uname -m)" > /usr/local/bin/docker-compose &&\
chmod +x /usr/local/bin/docker-compose
docker-compose --version
curl -L https://raw.githubusercontent.com/docker/compose/"$(docker-compose --version | awk 'NR==1{print $NF}')"/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
