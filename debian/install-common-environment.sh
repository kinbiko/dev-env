#!/bin/bash

("../agnostic/configure-user-system.sh")

("./common/install-docker.sh")
("../agnostic/common/install-chrome.sh")
("../agnostic/common/install-git.sh")

echo "Docker, Google-Chrome and Git is now installed."
