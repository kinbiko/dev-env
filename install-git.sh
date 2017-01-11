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

echo "Configuring build"
cd git-$VERSION
make configure 
./configure --prefix=/usr

echo "Compiling Git..."
make all 
echo "Installing Git..."
sudo make install 

echo "Removing temporary files"
cd ~
rm -rf git-$VERSION*

echo "Installation complete"
