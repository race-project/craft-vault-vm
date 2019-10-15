# CRAFT Vault

This document provides installation instructions on how to deploy a CRAFT Vault VM using our set of scripts.

The CRAFT Vault VM automates the installation and configuration of design flows, its required software, and an additional set of tools for collaborative development.

---

## Pre-Requisites

### Open-Source ISI Design Flow

#### Dependencies

- Python 3.7 (File: `Python-3.7.2.tgz`)

#### Software

- Icarus Verilog 10.3 (File: `iverilog-10_3.tar.gz`)
- TCL 8.6.9 (File: `tcl8.6.9-src.tar.gz`)
- Yosys Open SYnthesis Suite 0.9 (File: `yosys-0.9.tar.gz`)

### Demo ISI Design Flow

#### Dependencies

- **Cadence**:
  - `cadence_base` and `cadence_virtuoso`: Cadence InstallScape and Virtuoso 12.3 (File: `ICADV12.30.700.tar.gz`)
  - `cadence_pvs`: (File: `PVS16.13.s346.tar.gz`)
  - `cadence_incisive`: Cadence Incisive Enterprise Simulator 15.20 (File: `INCISIVE15.20.056.tar.gz`)
  - `cadence_innovus`: Cadence Innovus 17.15 (File: `INNOVUS17.15.000.tar.gz`)
  - `cadence_confrml`: Cadence Conformal Equivalence Checker 17.10 (File: `CONFRML17.10.240.tar.gz`)

- **Synopsys**:
  - `synopsys`: Synopsys installer 5.0.1 (File: `SynopsysInstaller_v5.0.1.run`)
    - Synopsys PrimeTime (Files: `pts_vO-2018.06-SP5-1_common.spf`, and `pts_vO-2018.06-SP5-1_linux64.spf`)
    - Synopsys RTL Synthesis (Files: `syn_vO-2018.06-SP5-3_common.spf`, and `syn_vO-2018.06-SP5-3_linux64.spf`)

#### ISI Design Flow Software

- Module system: Lmod 7.7 (File: `Lmod-7.7.tar.bz2`)
- NCSU Free PDK (File: `NCSU-FreePDK45-1.4.tar`)
- EPEL Release for CentOS 7 (File: `epel-release-latest-7.noarch.rpm`)
- ISI Flow 2.0.1 (File: `isi_flow_v2.0.1.tar.gz`)

---

## Creating a CRAFT Vault VM

```
$ bash run-ansible.sh -h
Ansible Script for Setting Up RACE VM

run-ansible.sh [-h] [-i INSTALL_FILES] -f FLOW_NAME

where:
  -h   Show this help text
  -f   Flow name (default: isi) [isi]
  -i   Install files folder
  -c   Set Cadence License File
  -s   Set Synopsys License File
  -t   Set Synopsys ID
```

For example:

```
$ bash run-ansible.sh -f open-source -i /race/install-files
```
