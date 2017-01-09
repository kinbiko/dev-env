#!/bin/bash

#ensure you are running these commands as root
checkThatYouAreRoot()
addTheRepositoriesRequiredForTheInstallationOfThePrerequisites()
ensureBashIsHeartbleedProof()

apt-get update
apt-get upgrade

apt-get install git

#prompt for rdp or vnc
if(rdp)
	installRDPServer();
else
	installVNCServer();

#Should prompt for username w.r.t. ldap server.
#ldap configurations can be hardcoded in the script
createUser()

echo "The rest of the installation can be performed by the developer"
