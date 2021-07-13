#!/bin/bash
#--------------------------------------------#
# Update and package for Docker
#--------------------------------------------#

apt-get update -y

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#--------------------------------------------#
#PGP key for docker
#--------------------------------------------#

curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#--------------------------------------------#
# Stable Repository
#--------------------------------------------#

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

#--------------------------------------------#
#Install Docker
#--------------------------------------------#
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

#--------------------------------------------#
#Install Docker Compose
#--------------------------------------------#

curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


#--------------------------------------------#
