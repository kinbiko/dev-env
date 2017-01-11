#!/bin/bash

echo "Installing the compile dependencies for Git"
sudo apt-get install gcc > /dev/null
sudo apt-get install autoconf > /dev/null

echo "Grabbing git tarball from kernel.org"
cd ~
wget https://www.kernel.org/pub/software/scm/git/git-2.11.0.tar.gz > /dev/null

echo "Extracting tarball"
tar xzvf git-2.11.0.tar.gz > /dev/null

cd git-2.11.0

echo "Configuring build"
make configure > /dev/null

sudo sh -c "./configure --prefix=/usr"

echo "Compiling Git..."
make all > /dev/null
echo "Installing Git..."
sudo make install > /dev/null

echo "Removing tarball"
cd ~
rm git-2.11.0.tar.gz

echo "Installation complete"
