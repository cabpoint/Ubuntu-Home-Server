# 🖥️ Ubuntu Home Server

A personal infrastructure home lab built to develop practical Linux system administration, networking, security, and infrastructure engineering skills.

The purpose of this project is to build, configure, verify, and document a Linux server using technologies commonly found in production environments. Every completed component is documented with implementation details, verification steps, screenshots, and references.

---

## 📸 Infrastructure Overview

<img width="310" height="610" alt="network-topology" src="https://github.com/user-attachments/assets/d286025d-b0e4-4163-bad4-d8d64c3343d4" />

---

## 🎯 Project Goals

This project focuses on learning how to:

- Configure and administer Ubuntu Server
- Secure remote access using SSH
- Manage network and firewall configuration
- Deploy web services using Nginx
- Run applications with Docker
- Implement backup and recovery strategies
- Build good documentation habits
- Develop practical Infrastructure & Systems Engineering skills

---

## 🚀 Infrastructure Status

| Component | Status |
|-----------|:------:|
| Ubuntu Server | ✅ |
| Static IP | ✅ |
| SSH | ✅ |
| UFW Firewall | ✅ |
| Nginx | ✅ |
| Docker | ✅ |
| Manual Backups | ✅ |
| Docker Compose | 🚧 |
| Reverse Proxy | 🚧 |
| Fail2Ban | 🚧 |
| WireGuard VPN | 🚧 |
| Monitoring | 🚧 |

---

## 📚 Documentation

Every configuration performed on this server is documented.

| Document |
|----------|
| [00 - Network Topology](docs/00-network-topology.md) |
| [01 - Static IP](docs/01-static-ip.md) |
| [02 - SSH](docs/02-ssh.md) |
| [03 - UFW](docs/03-ufw.md) |
| [04 - Nginx](docs/04-nginx.md) |
| [05 - Docker](docs/05-docker.md) |
| [06 - System Backups](docs/06-system-backups.md) |

---

## 🛠️ Technologies

- Ubuntu Server
- Linux CLI
- OpenSSH
- UFW
- Nginx
- Docker
- Bash
- Git
- GitHub
- Markdown
- VirtualBox

---

## 💻 System Specifications

| Component | Specification |
|-----------|---------------|
| CPU | 4 vCPUs |
| Memory | 4 GB RAM |
| Storage | 15 GB SSD |

---

## 🌐 Network Configuration

| Setting | Value |
|---------|-------|
| IP Address | 192.168.0.150 |
| Gateway | 192.168.0.1 |
| DNS | 1.1.1.1, 1.0.0.1 |

---

## 💡 Skills Demonstrated

- Linux system administration
- Network configuration
- Static IP configuration
- SSH remote administration
- Firewall configuration (UFW)
- Web server deployment (Nginx)
- Docker container deployment
- Configuration backups
- Infrastructure documentation
- Troubleshooting and verification

---

## 🗺️ Roadmap

- [x] Ubuntu Server Installation
- [x] Static IP Configuration
- [x] SSH Configuration
- [x] UFW Firewall
- [x] Nginx Web Server
- [x] Docker Installation
- [x] Manual Configuration Backups
- [ ] Docker Compose
- [ ] Reverse Proxy
- [ ] Fail2Ban
- [ ] WireGuard VPN
- [ ] Cron Backup Automation
- [ ] System Monitoring
- [ ] Systemd Services

---

## 📂 Repository Structure

```text
Ubuntu-Home-Server/
│
├── docs/
│   ├── 00-network-topology.md
│   ├── 01-static-ip.md
│   ├── 02-ssh.md
│   ├── 03-ufw.md
│   ├── 04-nginx.md
│   ├── 05-docker.md
│   └── 06-system-backups.md
│
├── images/
│
├── scripts/
│
└── README.md
```

---

## 📈 Project Status

🚧 **Work in Progress**

This repository is actively maintained as I continue expanding my home lab.

Each completed service is implemented, verified, documented, and supported with screenshots to demonstrate practical understanding rather than simply following installation guides.
