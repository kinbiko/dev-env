#!/bin/bash

("./agnostic/configure-user-system.sh")

("./agnostic/java/install-java-8.sh")
("./agnostic/java/install-maven.sh")
("./agnostic/java/install-sts.sh")

echo "Java 8, Maven and Spring STS installed."
