# UFW Firewall Configuration

## Objective

Configure and verify the Uncomplicated Firewall (UFW) to protect the Ubuntu Server while allowing only the required network services.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Firewall | UFW |
| Server IP | 192.168.0.150 |
| Allowed Service | OpenSSH |

---

## Why UFW?

A firewall helps reduce the attack surface of the server by allowing only explicitly permitted network traffic.

For this home lab, SSH access is required while all other unsolicited incoming connections remain blocked.

---

## Installation

Verify that UFW is installed.

```bash
sudo ufw status
```

If required, install UFW.

```bash
sudo apt install ufw
```

---

## Configuration

Allow SSH before enabling the firewall.

```bash
sudo ufw allow OpenSSH
```

Enable the firewall.

```bash
sudo ufw enable
```

Verify the configuration.

```bash
sudo ufw status verbose
```

---

## Verification

### Firewall Status

```bash
sudo ufw status verbose
```

<img width="488" height="263" alt="image" src="https://github.com/user-attachments/assets/b7196363-41fa-4728-97b6-0ec24df451c4" />


---

### Active Rules

```bash
sudo ufw status numbered
```

<img width="455" height="214" alt="image" src="https://github.com/user-attachments/assets/9a734793-6870-461f-bf76-22cb0ba1a265" />


---

## Current Rules

| Port | Protocol | Purpose |
|------|----------|---------|
| 22 | TCP | OpenSSH |

---

## Implementation Notes

Before enabling the firewall, the OpenSSH service was explicitly allowed to prevent accidental loss of remote access.

---

## Future Improvements

- Allow HTTP (80) for Nginx
- Allow HTTPS (443)
- Review firewall rules regularly
- Restrict access to specific IP addresses where appropriate

---

## What I Learned

- Why a firewall is essential for Linux servers
- How default firewall policies affect incoming connections
- Why SSH should be allowed before enabling UFW
- How to verify active firewall rules
- How to inspect firewall configuration using UFW

---

## References

The configuration was implemented using the official Ubuntu UFW documentation.

- Ubuntu Server Guide – UFW
- UFW Manual

---

## Commands Used

```bash
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status verbose
sudo ufw status numbered
```

---

## File Locations

| File | Purpose |
|------|---------|
| /etc/ufw/user.rules | User-defined firewall rules |
| /etc/default/ufw | Default UFW configuration |

---

## Verification Checklist

- [x] Firewall enabled
- [x] SSH access preserved
- [x] OpenSSH rule configured
- [x] Firewall rules verified
