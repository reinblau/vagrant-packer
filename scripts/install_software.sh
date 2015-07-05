#!/bin/bash
set -o errexit -o nounset -o pipefail

echo "Installing Docker from get.docker.com"
echo "------------------------------------"
echo
curl -sSL https://get.docker.com/ | sh
usermod -aG docker vagrant
systemctl enable docker

echo
echo "Installing docker-composer"
echo "------------------------------------"
echo
curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&\
chmod +x /usr/local/bin/docker-compose
docker-compose --version
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
