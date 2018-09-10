[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

# Vagrant scripts.

Copyright (c) 2017-2018, Hans Erik Thrane

## What is it?

Vagrant scripts to manage VM's. Useful for testing server provisioning.

## Requirements

Download [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

Download [Vagrant](https://www.vagrantup.com/downloads.html) and/or [Vagrant Manager](http://vagrantmanager.com/downloads/).

## Commands

All commands should be used in the same directory where you find the `Vagrantfile`.
(You can find the VM's local address in that file).

`vagrant box update` will update/upgrade the VM image.

`vagrant up` will launch the VM.
On first run it will also provision the VM with basic login.
Please note that your `~/.ssh/id_rsa.pub` file will be uploaded to the VM so you can more easily log in to the `ansible` user.
Now log in to the VM using `ssh ansible@<ip_address>` and use password `ansible`.

`vagrant halt` will stop an already running VM.
