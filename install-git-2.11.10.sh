#!/bin/bash

#To update git, update this number and run script
VERSION=2.11.0

cd ~
echo "Installing the compile dependencies for Git"
sudo apt-get install -y gcc autoconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev

echo "Grabbing git tarball from kernel.org"
wget https://www.kernel.org/pub/software/scm/git/git-$VERSION.tar.gz 

echo "Extracting tarball"
tar xzvf git-$VERSION.tar.gz 

cd git-$VERSION

echo "Configuring build"
make configure 

./configure --prefix=/usr

echo "Compiling Git..."
make all 
echo "Installing Git..."
sudo make install 

echo "Removing tarball"
cd ~
rm git-2.11.0.tar.gz

echo "Installation complete"
