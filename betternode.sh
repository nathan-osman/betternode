#!/bin/bash

USER=tmpuser

# Remove the built-in node account
userdel $(id -nu 1000)

# Create a new group and user with the correct values
groupadd -g $GID $USER
useradd -mu $UID -g $GID $USER

# Switch to the specified user's account and run the command
sudo -EHu $USER env "PATH=$PATH" "$@"
