#!/bin/bash

("./configure-user-system.sh")

("./common/install-docker.sh")
("./common/install-chrome.sh")
("./common/install-git.sh")

echo "Docker, Google-Chrome and Git is now installed."
