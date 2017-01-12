#!/bin/bash

VERSION=3.3.9

echo "Grabbing apache-maven-$VERSION tarball from the apache mirror on anlx"
wget http://apache.mirror.anlx.net/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.tar.gz > /dev/null

echo "Extracting tarball..."
tar xzvf apache-maven-$VERSION-bin.tar.gz > /dev/null

echo "Moving maven installation to /opt/"
sudo mv apache-maven-$VERSION /opt/

echo "adding the maven path to the path"
echo "export PATH=$PATH:/opt/apache-maven-$VERSION/bin/" >> ~/.bashrc

echo "Removing tarball"
rm apache-maven-$VERSION-bin.tar.gz

echo "Installation complete. Start a new shell to use Maven"
