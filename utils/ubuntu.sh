#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "expected path to ssh public key" >&2 && exit 1
fi

apt-get update
apt-get upgrade
apt-get install -y python
apt-get install -y virtualbox-guest-additions-iso
useradd -m -s /bin/bash -p '$1$iIG4q3NW$OW59LdCDEll9oReghahM9.' ansible
adduser ansible sudo
mkdir -p /home/ansible/.ssh
echo "$1" >> /home/ansible/.ssh/authorized_keys
