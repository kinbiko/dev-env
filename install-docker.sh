#!/bin/bash

### apt-repository handling ###

sudo apt-get purge "lxc-docker*"
sudo apt-get purge "docker.io*"

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates gnupg2

sudo apt-key adv \
    --keyserver hkp://ha.pool.sks-keyservers.net:80 \
    --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list

sudo apt-get update

### Installation ###
sudo apt-get install docker-engine
