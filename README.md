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

### Running the ISI Open Flow

Once the VM installation and configuration has completed. You should restart the VM (e.g., `shutdown -r 0`), and as a user run the following commands:

```
$ cd $HOME
$ cp -R /shared/software/opensource/open_flow_v1.1 .
$ module load open_source
$ cd open_flow_v1.1
$ ./run.sh

## Visualize generated GDS layout
$ cd /shared/software/opensource/OwlVision-1_1_10
$ ./run.sh
```
In the OwlVision software, locate the `.gds` file generated into the `$HOME/open_flow_v1.1./layout`.


### Software

- Icarus Verilog 10.3 (File: `iverilog-10_3.tar.gz`)
- TCL 8.6.9 (File: `tcl8.6.9-src.tar.gz`)
- Yosys Open SYnthesis Suite 0.9 (File: `yosys-0.9.tar.gz`)
- Gperf 3.0.4 (`gperf-3.0.4.tar.gz`)
- graywolf 0.1.6 (`graywolf-0.1.6`)
- Magic 8.2.150 (`magic-8.2.150.tgz`)
- NetGen 1.5.132 (`netgen-1.5.132.tgz`)
- QRouter 1.4.59 (`qrouter-1.4.59.tgz`)
- QFlow 1.4.62 (`qflow-1.4.62.tgz`)
- OwlVision 1.1.10 (`OwlVision-1_1_10.tar.gz`)
- ISI Open Flow 1.1 (File: `open_flow_v1.1.tar.gz`)
