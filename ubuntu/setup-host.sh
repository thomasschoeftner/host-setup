#! /bin/bash

echo "install basic tools"
sudo apt-get update
sudo apt-get install -y \
 git \
 curl \
 apt-transport-https \
 ca-certificates \
 software-properties-common \
 openjdk-8-jdk
echo 'JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"; export JAVA_HOME' >> ~/.profile


echo "install docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $(whoami)
docker version
echo
echo


echo "get build containers"
mkdir ~/dev
cd ~/dev
git clone https://github.com/thomasschoeftner/tat.git ~/dev/tools
