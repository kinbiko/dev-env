#!/bin/bash

sudo apt-get update

sudo ./configure-user-system.sh

sudo ./install-git.sh
sudo ./install-java-8.sh
sudo ./install-maven.sh
sudo ./install-sts.sh
