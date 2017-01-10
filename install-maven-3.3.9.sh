#!/bin/bash

echo "Grabbing apache-maven-3.3.9 tarball from the apache mirror on anlx"
wget http://apache.mirror.anlx.net/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz > /dev/null

echo "Extracting tarball..."
tar xzvf apache-maven-3.3.9-bin.tar.gz > /dev/null

echo "Moving maven installation to /opt/"
sudo mv apache-maven-3.3.9 /opt/

echo "adding the maven path to the path"
echo "export PATH=$PATH:/opt/apache-maven-3.3.9/bin/" >> ~/.bashrc

echo "Removing tarball"
rm apache-maven-3.3.9-bin.tar.gz

echo "Installation complete. Start a new shell to use Maven"
