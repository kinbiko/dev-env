#!/bin/bash

### apt-repository handling ###

echo "Removing any old/deprecated versions of docker"
sudo apt-get purge "lxc-docker*" > /dev/null
sudo apt-get purge "docker.io*" > /dev/null

echo "Updating package repositories"
sudo apt-get update > /dev/null
echo "Installing transport-https and ca-certificates"
sudo apt-get install apt-transport-https ca-certificates gnupg2

echo "Adding keys for Docker"
sudo apt-key adv \
    --keyserver hkp://ha.pool.sks-keyservers.net:80 \
    --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "Updating the repository list for Docker"
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list'

echo "Updating package repositories"
sudo apt-get update > /dev/null

### Installation ###
echo "Installing docker"
sudo apt-get -y install docker-engine
