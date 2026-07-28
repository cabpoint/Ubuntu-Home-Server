# Network Topology

## Overview

This document describes the network layout of my Ubuntu Home Server lab.

The environment is hosted inside VirtualBox and is used for learning Linux administration, networking, and infrastructure concepts.

---

## Network Diagram

<img width="310" height="610" alt="network-topology" src="https://github.com/user-attachments/assets/558f7fcc-efc4-48a2-89e0-fa039ea3dd68" />

---

## Virtual Machine

The Ubuntu Server is hosted inside VirtualBox.

<img width="816" height="619" alt="image" src="https://github.com/user-attachments/assets/bcf3c4f8-e00b-49a8-abdc-3da72a1a6da5" />



---

## System Information

The following output confirms the operating system, hostname, kernel version and architecture.

<img width="407" height="263" alt="image" src="https://github.com/user-attachments/assets/16a1e2e6-787d-49ec-8773-a505e33bc460" />


---

## Network Configuration

The server is configured with a static IPv4 address.

<img width="825" height="229" alt="image" src="https://github.com/user-attachments/assets/382ab3d0-6ce4-4b0b-91f0-c2ca8cb3b752" />



| Parameter | Value |
|-----------|-------|
| IP Address | 192.168.0.150 |
| Gateway | 192.168.0.1 |
| DNS | 1.1.1.1 |

---

## Services

| Service | Status | Purpose |
|----------|--------|---------|
| OpenSSH | Installed | Remote administration |
| UFW | Enabled | Firewall |
| Nginx | Installed | Reverse Proxy / Web Server |

---

## Learning Outcomes

- Understanding network topology
- Virtualization using VirtualBox
- Static IP configuration
- Remote administration using SSH
- Linux network inspection
