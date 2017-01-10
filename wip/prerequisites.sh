#!/bin/bash

checkThatYouAreRoot

#If this fails, the bash version - and therefore probably also the OS,
#is too old and unsafe to be suited as a development environment.
if [ "$(sh ./shellshock-check.sh)" = VULNERABLE ]; then
    echo "This system is not appropriate as a dev environment"
    exit -1;
fi

#Remove the installation drive from sources
#Some installations may decide to search the installation drive
#for any of its dependencies(E.g. Docker). This should preferably
#be downloaded from the internet instead.
sed -i '/cdrom/d' /etc/apt/sources.list

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
