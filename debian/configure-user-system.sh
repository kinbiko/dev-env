#Ensure that you have the 'service' command available
#in the shell.
echo "export PATH=$PATH:/usr/sbin/" >> ~/.bashrc

#Remove the installation drive from sources
#Some installations may decide to search the installation drive
#for any of its dependencies(E.g. Docker). This should preferably
#be downloaded from the internet instead.
sudo sed -i '/cdrom/d' /etc/apt/sources.list
