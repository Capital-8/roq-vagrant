# Roq Trading Solutions

Solutions focused on development, testing and deployment of
algorithmic trading strategies.


## Overview

Useful for testing [roq-ansible](https://github.com/roq-trading/roq-ansible)
on a VM using Vagrant and VirtualBox.


## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Ansible


## First Steps

First make sure you have access to the `vagrant` and `ansible-playbook` from your current environment.

Refresh the git submodules using

```bash
git submodule update --init --recursive
```

The Ansible inventory is named `vm_test`

There are directories for each of these supported Linux distributions

* CentOS 7
* Ubuntu 18.04
* Ubuntu 16.04
* Debian 9

> The Ansible inventory is named `vm_test` and it's referenced
> by the `Vagrantfile` found in each of these sub-directories.
> If you require another inventory configuration, you can either modify
> the existing `vm_test` or you can create a new inventory file and modify
> the `Vagrantfile`'s.

Change into either of these directories to start the VM. For example

```bash
cd centos_7
vagrant up
```

> Vagrant will automatically provision the VM first time you launch it.
> This may fail randomly for a number of reasons, e.g. timeouts or other
> network issues.
> You should then try to re-run the provisioning using `vagrant provision`

You can log on to the VM using

```bash
vagrant ssh
```

And you can shut the VM down using

```bash
vagrant halt
```

Finally, the VM image is only downloaded once and may therefore become "old".
In order to refresh the image, run

```bash
vagrant box update
```

## Next Steps

* [Contact us](mailto:info@roq-trading.com)
* [Roq Trading Solutions (website)](https://roq-trading.com)
* [Online documentation](https://roq-trading.com/docs)
* [Development samples](https://github.com/roq-trading/roq-samples)
* [Ansible playbook](https://github.com/roq-trading/roq-ansible)
* [Grafana dashboards](https://github.com/roq-trading/roq-grafana)
* [Vagrant development environments](https://github.com/roq-trading/roq-vagrant)
