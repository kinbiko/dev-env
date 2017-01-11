#!/bin/bash

echo "Installing the compile dependencies for Git"
sudo apt-get install -y gcc 
sudo apt-get install -y autoconf 

echo "Grabbing git tarball from kernel.org"
cd ~
wget https://www.kernel.org/pub/software/scm/git/git-2.11.0.tar.gz 

echo "Extracting tarball"
tar xzvf git-2.11.0.tar.gz 

cd git-2.11.0

echo "Configuring build"
make configure 

sudo sh -c "./configure --prefix=/usr"

echo "Compiling Git..."
make all 
echo "Installing Git..."
sudo make install 

echo "Removing tarball"
cd ~
rm git-2.11.0.tar.gz

echo "Installation complete"
