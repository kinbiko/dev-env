#!/bin/bash

VERSION=5.3

echo "Installing zsh build dependencies"
sudo apt-get -y install build-essential ncurses-dev yodl autoconf

echo "Downloading source for zsh..."
wget http://sourceforge.net/projects/zsh/files/zsh/$VERSION/zsh-$VERSION.tar.gz/download > /dev/null
echo "Extracting zsh source code..."
tar xvzf download > /dev/null

cd zsh-$VERSION

echo "Running preconfiguration"
./Util/preconfig > /dev/null

echo "Configuring zsh build"
./configure --prefix=/usr > /dev/null

echo "Building zsh from source"
make > /dev/null

echo "Installing zsh..."
sudo make install > /dev/null

echo "Setting zsh as the default shell..."
which zsh | sudo tee -a /etc/shells
sudo chsh -s "$(which zsh)" "${USER}" > /dev/null

echo "Installation complete!"
