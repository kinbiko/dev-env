#!/bin/bash

read -p "Distro ('debian' or 'ubuntu'): " distro

("./configure-user-system.sh")

("./$distro/common/install-docker.sh")
("./agnostic/common/install-chrome.sh")
("./agnostic/common/install-git.sh")

echo "Docker, Google-Chrome and Git are now installed."
