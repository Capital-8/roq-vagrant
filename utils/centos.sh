#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "expected path to ssh public key" >&2 && exit 1
fi

yum update
yum upgrade
yum install -y python
useradd -m -s /bin/bash -p '$1$iIG4q3NW$OW59LdCDEll9oReghahM9.' ansible
echo 'ansible	ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
mkdir -p /home/ansible/.ssh
echo "$1" >> /home/ansible/.ssh/authorized_keys
