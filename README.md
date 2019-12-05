# CRAFT Vault

This document provides installation instructions on how to deploy a CRAFT Vault VM using our set of scripts.

The CRAFT Vault VM automates the installation and configuration of design flows, its required software, and an additional set of tools for collaborative development.

---

## Open-Source ISI Design Flow

The CRAFT open-source VM requires [**CentOS 8**](http://isoredirect.centos.org/centos/8/isos/x86_64/CentOS-8-x86_64-1905-dvd1.iso).

### VM Installation

Once CentOS 8 is installed in a virtual machine (e.g., VirtualBox), the following commands should be executed as `root`:

```
$ yum install git
$ mkdir /race
$ cd /race
$ git clone https://github.com/race-project/craft-vault-vm
$ cp -R craft-vault-vm/install-files .
$ cd craft-vault-vm
$ tar zcf ../install-files/ansible.tar.gz .
$ bash run-ansible.sh -f open-source -i /race/install-files
```

### Software

- Icarus Verilog 10.3 (File: `iverilog-10_3.tar.gz`)
- TCL 8.6.9 (File: `tcl8.6.9-src.tar.gz`)
- Yosys Open SYnthesis Suite 0.9 (File: `yosys-0.9.tar.gz`)
- Gperf (`gperf-3.0.4.tar.gz`)
- graywolf (`graywolf-0.1.6`)
- ISI Open Flow 1.1 (File: `open_flow_v1.1.tar.gz`)
