#!/bin/bash

if [ "$(sh ./shellshock-check.sh)" = VULNERABLE  ]; then
    echo "This system is not appropriate as a dev environment"
    exit -1;
fi
