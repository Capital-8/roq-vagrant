[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

# Vagrant scripts.

Copyright (c) 2017-2019, Hans Erik Thrane

## What is it?

Provisioning of virtual machines using Vagrant and VirtualBox.

Useful for testing the standard [Ansible Playbook](https://github.com/roq-trading/roq-ansible-playbook) provided by
Roq Trading Solutions.

## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Ansible

## How to use?

First make sure you have access to the `vagrant` and `ansible-playbook` from your current environment.

Refresh the git submodules using

	`git submodule update --init --recursive`

There are directories for each of the supported Linux distributions.

* CentOS 7
* Ubuntu 18.04
* Ubuntu 16.04
* Debian 9

Change into either of these directories to start the VM. For example

	cd centos_7
	vagrant up

Please note!
Provisioning of the VM will automatically happen first time you launch it.
This will take some time since the entire system architecture is installed from scratch.

You can repeat the provisioning at a later time using

	vagrant provision

This will update the system architecture, if necessary.

Please note!
The provisioning step relies on internet access and may fail at any time.
You can use `vagrant provision` to continue the installation after such errors.

You can log on to the VM using

	vagrant ssh

And you can shut the VM down using

	vagrant halt

Finally, the VM image is only downloaded once and may therefore become "old".
In order to refresh the image, run

	vagrant box update
