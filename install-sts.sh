#!/bin/bash

STS_VERSION=3.8.3.RELEASE
ECLIPSE_VERSION=4.6.2
ECLIPSE_SHORT_VERSION=4.2 #Major.minor semver notation, relative to the above

FILENAME=spring-tool-suite-$STS_VERSION-e$ECLIPSE_VERSION-linux-gtk-x86_64.tar.gz

cd ~

echo "Downloading STS..."
wget http://download.springsource.com/release/STS/$STS_VERSION/dist/e$ECLIPSE_SHORT_VERSION/$FILENAME > /dev/null/

echo "Extracting tarball..."
tar -zxf $FILENAME

echo "Performing cleanup..."
mv sts-bundle/ Spring\ Tool\ Suite/
rm $FILENAME

echo "Installation complete"
echo "Spring Tool Suite is now found in your home directory"
