#!/bin/bash

VERSION=1.13.0

echo "Downloading Atom..."
wget https://github.com/atom/atom/releases/download/v$VERSION/atom-amd64.deb > /dev/null

echo "Installing Atom..."
sudo dpkg --install atom-amd64.deb > /dev/null

echo "Removing temporary files..."
rm atom-atom64.deb

echo "Atom has been installed."

