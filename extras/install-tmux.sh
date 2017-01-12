#!/bin/bash

read -p "Distro ('debian' or 'ubuntu'): " distro

#The version in the repository is < 2.x
VERSION=2.3

cd ~

wget https://github.com/tmux/tmux/releases/download/$VERSION/tmux-$VERSION.tar.gz

tar -zxf tmux-$VERSION.tar.gz

cd tmux-$VERSION

#Install the dependencies for building tmux from source
echo "Installing Tmux build dependencies"
#for some reason 'sudo apt-get build-dep tmux' doesn't work...

if [ "$distro" = "debian" ]; then
    sudo apt-get -y build-dep tmux
else
    sudo apt-get -y install libevent-1.4 libevent-dev libncurses5-dev
fi


echo "Configuring the build..."
./configure --prefix=/usr

echo "Compiling Tmux"
make all > /dev/null

"Installing Tmux"
sudo make install > /dev/null

echo "Removing temporary files..."
cd ~
rm -rf tmux-*

echo "Tmux is now installed"
