# Static IP Configuration

## Objective

Configure a persistent static IPv4 address for the Ubuntu Server using Netplan to ensure reliable remote access.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Virtualization | VirtualBox |
| Interface | enp0s3 |
| IP Address | 192.168.0.150 |
| Gateway | 192.168.0.1 |
| DNS | 1.1.1.1 |

---

## Why a Static IP?

A static IP address ensures that the server always keeps the same address on the local network.

This is required for services such as SSH, Nginx, Docker, and future self-hosted applications.

---

## Netplan Configuration

```yaml
network:
  ethernets:
    enp0s3:
      dhcp4: false
      addresses:
        - 192.168.0.150/24
      routes:
        - to: default
          via: 192.168.0.1
      nameservers:
        addresses:
          - 1.1.1.1
          - 1.0.0.1
version: 2
renderer: NetworkManager
```

---

## Apply Configuration

```bash
sudo netplan apply
```

---

## Verification

```bash
ip addr
```

<img width="835" height="315" alt="image" src="https://github.com/user-attachments/assets/bc38f851-df2e-410e-a899-6a991965ce5d" />


---

```bash
ip route
```

<img width="627" height="54" alt="image" src="https://github.com/user-attachments/assets/46e568f8-7eb0-42c2-b446-d4ed583b2969" />


---

```bash
ping 192.168.0.1
```

<img width="500" height="167" alt="image" src="https://github.com/user-attachments/assets/fabd70f4-46cd-4254-afa4-5835ed275b67" />


---

## Problems Encountered

### Problem

The static IP configuration did not apply automatically after editing the Netplan configuration.

### Cause

The configuration required applying changes manually.

### Solution

```bash
sudo netplan apply
```

---

## What I Learned

- How Netplan manages network configuration
- Difference between DHCP and Static IP
- How to inspect network interfaces
- How to verify routing configuration
- Why infrastructure services require a fixed IP address

## References

The configuration was based on the official Netplan documentation and adapted to the requirements of this home lab environment.

- https://manpages.ubuntu.com/manpages/noble/man5/netplan.5.html?utm_source=chatgpt.com
