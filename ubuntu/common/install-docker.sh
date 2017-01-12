#!/bin/bash

#Needed so that the installer won't try and look
#in the installation cd for data.
sudo sed -i '/cdrom/d' /etc/apt/sources.list

echo "Removing any old/deprecated versions of docker"
sudo apt-get purge "lxc-docker*" > /dev/null
sudo apt-get purge "docker.io*" > /dev/null

echo "Updating package repositories to get latest dependencies"
sudo apt-get update > /dev/null
echo "Installing transport-https and ca-certificates"
sudo apt-get -y install apt-transport-https ca-certificates gnupg2

echo "Adding keys for Docker"
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 \
      --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "Updating the repository list for Docker"
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list'

echo "Updating package repositories to become aware of Docker"
sudo apt-get update > /dev/null

echo "Installing docker"
sudo apt-get -y install docker-engine > /dev/null
sudo apt-get -y install bridge-utils > /dev/null

echo "starting the docker daemon"
sudo service docker start > /dev/null
sudo usermod -aG docker $(whoami)
echo "Installation complete."
echo "Please log out and log in to start running Docker commands"
