#!/bin/bash

echo "Installing build VIM dependencies"
sudo apt-get -y install gcc ncurses

echo "Downloading source code..."
cd ~
wget https://github.com/vim/vim/archive/master.zip
unzip master.zip

cd vim-master/src/
echo "Configuring VIM build..."
./configure --prefix=/usr > /dev/null
echo "Building VIM..."
make > /dev/null
echo "Installing VIM..."
sudo make install > /dev/null

echo "Removing temporary files..."
cd ~
rm master.zip
rm -rf vim-master

echo "Most recent version of VIM is now installed"
