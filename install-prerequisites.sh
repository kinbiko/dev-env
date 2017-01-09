#!/bin/bash

#ensure you are running these commands as root
#Will exit with an error message if run as as a non-root user
function checkThatYouAreRoot {
    if [ "$EUID" -ne 0 ]; then
        echo "Logged in as root, preparing for development environment installation..."
    else
        echo "Please log in as root user."
        exit -1;
    fi
}

#Debian is free as in freedom, and therefore does not support all package
#repositories:that one may want out of the box
#This function adds the repositories needed for the installation of 
function addTheRepositoriesRequiredForTheInstallationOfThePrerequisites{

}

function ensureBashIsHeartbleedProof{

}

checkThatYouAreRoot
apt-get update
apt-get upgrade

apt-get install git

#prompt for rdp or vnc
if(rdp)
	installRDPServer();
else
	installVNCServer();

createUser()

username='ace.ventura'

cd /home/$username
git clone https://github.com/kinbiko/dev-env

letTheUserBeInTheSudoersList()

echo "The rest of the installation can be performed by the developer"
