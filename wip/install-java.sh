#!/bin/bash

#The following packages are labelled ubuntu, but as they only contain an installer,
#it will work on debian as well.
echo "Storing the deb repositories"
sudo sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java.list'
sudo sh -c 'echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" >> /etc/apt/sources.list.d/webupd8team-java.list'

echo "Saving key for the ubuntu keyserver"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 > /dev/null
echo "Updating package list to find Oracle Java"
sudo apt-get update > /dev/null
echo "Downloading and starting installer."
sudo apt-get install oracle-java8-installer
echo "Java compiler version:"
javac -version
echo "Java version:"
java -version
echo "Installation complete"
