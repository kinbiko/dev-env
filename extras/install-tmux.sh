#!/bin/bash

#The version in the repository is < 2.x
VERSION=2.3

cd ~

wget https://github.com/tmux/tmux/releases/download/$VERSION/tmux-$VERSION.tar.gz

tar -zxf tmux-$VERSION.tar.gz

cd tmux-$VERSION

#Install the dependencies for building tmux from scratch
sudo apt-get build-dep tmux

echo "Configuring the build..."
./configure --prefix=/usr

echo "Compiling Tmux"
make all > /dev/null

sudo make install > /dev/null

echo "Removing temporary files..."
cd ~
rm -rf tmux-*

echo "Tmux is now installed"
