# UFW Firewall Configuration

## Objective

Configure and verify the Uncomplicated Firewall (UFW) to secure the Ubuntu Server while allowing only the services required for remote administration and web hosting.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Firewall | UFW |
| Server IP | 192.168.0.150 |

---

## Why UFW?

UFW (Uncomplicated Firewall) provides a simple interface for managing Linux firewall rules.

For this home lab, it is used to restrict incoming connections while allowing only the services that are intentionally exposed.

---

## Verify Installation

Verify that UFW is installed and enabled.

```bash
sudo ufw status verbose
```

---

## Firewall Configuration

The following services were allowed before enabling the firewall.

```bash
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable
```

Verify the active configuration.

```bash
sudo ufw status numbered
```

---

## Verification

### Firewall Status

```bash
sudo ufw status verbose
```

<img width="490" height="264" alt="image" src="https://github.com/user-attachments/assets/b236eacd-dcf2-43bd-b993-dc6ce69a997d" />


---

### Active Firewall Rules

```bash
sudo ufw status numbered
```

<img width="455" height="214" alt="image" src="https://github.com/user-attachments/assets/4abb7744-dcef-4780-90ef-9e6d0de4a06e" />

---

## Default Policy

The firewall is configured with the following default behaviour.

| Direction | Policy |
|-----------|--------|
| Incoming | Deny |
| Outgoing | Allow |
| Routed | Disabled |

---

## Current Firewall Rules

| Port | Protocol | Purpose |
|------|----------|---------|
| 22 | TCP | OpenSSH |
| 80 | TCP | HTTP (Nginx) |
| 443 | TCP | HTTPS (Nginx) |

Both IPv4 and IPv6 rules are enabled.

---

## Implementation Notes

Before enabling UFW, SSH access was allowed to ensure the server remained accessible remotely.

After deploying Nginx, HTTP and HTTPS traffic were permitted using the **Nginx Full** application profile.

---

## Future Improvements

- Restrict SSH access to trusted IP addresses
- Review firewall rules after deploying additional services
- Configure Fail2Ban to reduce brute-force attacks
- Periodically audit firewall rules

---

## What I Learned

- How UFW manages firewall rules on Ubuntu
- Why SSH should be allowed before enabling the firewall
- How application profiles such as **Nginx Full** simplify firewall management
- How to verify firewall configuration using `ufw status`
- How default firewall policies affect incoming and outgoing traffic

---

## References

This configuration was implemented using the official Ubuntu UFW documentation.

- Ubuntu Server Guide – UFW
- UFW Manual

---

## Commands Used

```bash
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
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
- [x] Default incoming policy set to Deny
- [x] SSH access preserved
- [x] HTTP traffic allowed
- [x] HTTPS traffic allowed
- [x] Firewall rules verified
