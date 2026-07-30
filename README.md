# Ubuntu Home Server

A highly documented Ubuntu Server project built to learn Linux system administration, networking, Docker, security and self-hosting.

---

## Environment

| Component | Value |
|----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Virtualization | Oracle VirtualBox |
| CPU | 4 vCPUs |
| Memory | 4 GB |
| Storage | 15 GB SSD |
| Documentation | Markdown |

---

## Features

- Static IP Configuration
- SSH Remote Access
- UFW Firewall
- Nginx Web Server
- Docker Engine
- Docker Compose
- Administration Scripts
- System Documentation

---

## Documentation

| Document |
|----------|
| [00 - Network Topology](docs/00-network-topology.md) |
| [01 - Static IP](docs/01-static-ip.md) |
| [02 - SSH](docs/02-ssh.md) |
| [03 - UFW](docs/03-ufw.md) |
| [04 - Nginx](docs/04-nginx.md) |
| [05 - Docker](docs/05-docker.md) |
| [06 - System Backups](docs/06-backups.md) |

---

## Scripts

| Script | Purpose |
|---------|---------|
| `backup.sh` | Creates a compressed backup of important configuration files |
| `health-check.sh` | Displays the current system health and service status |
| `update.sh` | Updates installed packages |

---

## Repository Structure

```text
Ubuntu-Home-Server/
├── docs/
│   ├── 00-network-topology.md
│   ├── 01-static-ip.md
│   ├── 02-ssh.md
│   ├── 03-ufw.md
│   ├── 04-nginx.md
│   ├── 05-docker.md
│   └── 06-backups.md
│
├── scripts/
│   ├── backup.sh
│   ├── health-check.sh
│   └── update.sh
│
├── images/
│
├── .gitignore
└── README.md
```

---

## Skills Demonstrated

- Linux Administration
- Ubuntu Server
- Networking
- SSH
- Firewall Configuration
- Nginx
- Docker
- Docker Compose
- Bash Scripting
- Git
- Markdown Documentation

---

## References

- https://ubuntu.com/server/docs/
- https://docs.docker.com/
- https://nginx.org/en/docs/
- https://wiki.archlinux.org/
- https://www.gnu.org/software/bash/manual/
