# roq-vagrant

Vagrant provisioning scripts allowing you to test
[roq-ansible](https://github.com/roq-trading/roq-ansible) using a VirtualBox VM
provisioned and managed by Vagrant.

These distributions are being tested

* CentOS
* Debian
* Ubuntu

> We only include the **two latest** major releases from each distribution!

Direct third-party dependencies

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)


## Operating Systems

* Linux
* macOS
* Windows (?)


## Prerequisites

Install VirtualBox by following the instructions from
[here](https://www.virtualbox.org/wiki/Downloads).

Install Vagrant by following the instructions from
[here](https://www.vagrantup.com/downloads.html).

> Your host must be capable of powering a VM requiring 4 CPU cores and 4GB RAM.


## Building

```bash
git submodule update --init --recursive

cd ubuntu-18.04

vagrant up
```

You can re-run the provision step using `vagrant provision`, if anything goes
wrong (e.g. network timeout).


## Using

```bash
vagrant ssh
```

You can now use the VM for your testing.


## License

The project is released under the terms of the MIT license.


## Links

* [Roq GmbH](https://roq-trading.com/)
* [Documentation](https://roq-trading.com/docs/)
* [Contact us](mailto:info@roq-trading.com)
