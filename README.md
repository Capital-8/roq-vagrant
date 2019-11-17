# Roq Trading Solutions

*A C++ HFT Toolkit for Algo Traders*


## What is it?

Vagrant configuration scripts for testing Ansible
server provisioning using VirtualBox VM's.

We use this to test deployment to some
common Linux distributions

* CentOS
* Debian
* RHEL
* Ubuntu

> You can use a similar setup to test your own
> configuration before you decide to update prod!


## Requirements

* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Ansible (for help on installation, see
  [roq-ansible](https://github.com/roq-trading/roq-ansible))

> All the VM's have been configured the following requirements
> * 8 CPU cores (capped at 50%)
> * 2GB RAM
>
> Your host should be able to support this!

## How to

Refresh the git submodules

```bash
git submodule update --init --recursive
```

Change into a directory, e.g.

```bash
cd centos_7
```

Use Vagrant to manage the VirtualBox VM

```bash
vagrant up
```

> If anything goes wrong (e.g. network timeout)
> during the initialization of the VM, you should
> re-run the provisioning using `vagrant provision`.

You can now log on to the VM

```bash
vagrant ssh
```

You can halt the VM

```bash
vagrant halt
```


## Links

* [Documentation](https://roq-trading.com/docs)
* [Contact us](mailto:info@roq-trading.com)
