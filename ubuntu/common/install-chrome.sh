#!/bin/bash

#Download the key, and apt-key to add to the system
wget -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#Add the chrome repository to the system sources.
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#Perform update to become aware of the chrome package.
sudo apt-get update

#install the stable version:
sudo apt-get -y install google-chrome-stable
