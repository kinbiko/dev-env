#!/bin/bash

("./configure-user-system.sh")

("./java/install-java-8.sh")
("./java/install-maven.sh")
("./java/install-sts.sh")

echo "Java 8, Maven and Spring STS installed."
