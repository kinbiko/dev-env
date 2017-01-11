#!/bin/bash

#If the following script returns 'VULNERABLE' then bash is vulnerable
#to shellshock.

#Found here:
#http://security.stackexchange.com/questions/68168/is-there-a-short-command-to-test-if-my-server-is-secure-against-the-shellshock-b
x='() { :;}; echo VULNERABLE' bash -c :

