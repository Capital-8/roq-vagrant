# roq-vagrant

Vagrant provisioning scripts allowing you to test
[roq-ansible](https://github.com/roq-trading/roq-ansible) using a VirtualBox VM
provisioned and managed by Vagrant.

Possible operating systems

* CentOS
* Debian
* RHEL
* Ubuntu

Direct third-party dependencies

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)


## Operating Systems

* Linux
* macOS
* Windows (?)


## Prerequisites

> Your host must be capable of running a VM with 8 CPU cores and 2GB RAM.

### VirtualBox

Follow the instructions from [here](https://www.virtualbox.org/wiki/Downloads).

### Vagrant

Follow the instructions from [here](https://www.vagrantup.com/downloads.html).


## Building

```bash
git submodule update --init --recursive

cd centos_7

vagrant up
```

You can re-run the provision step using `vagrant provision`, if anything goes
wrong (e.g. network timeout).


## Using

```bash
vagrant ssh
```

You can now use the VM for your testing.


## Links

* [Documentation](https://roq-trading.com/docs)
* [Contact us](mailto:info@roq-trading.com)
