# System Backups

---

## Objective

The objective of this document is to create manual backups of critical server configuration files before making infrastructure changes.

These backups provide a recovery point in case configuration files are accidentally modified or deleted.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Backup Type | Manual |
| Archive Format | tar.gz |
| Backup Location | /opt/backups |

---

## Why Backups?

Configuration files represent the current state of the server.

Creating backups before making infrastructure changes helps preserve working configurations and provides a recovery point if a service stops functioning correctly.

This implementation uses manual backups to understand the backup process before introducing automation.

---

## Files Included

The following configuration files are included in the backup.

| Path | Purpose |
|------|---------|
| /etc/nginx/ | Nginx configuration |
| /etc/ssh/sshd_config | OpenSSH configuration |
| /etc/netplan/*.yaml | Network configuration |

---

## Manual Backup Procedure

### Create the backup directory

```bash
sudo mkdir -p /opt/backups
```

### Copy the Nginx configuration

```bash
sudo cp -r /etc/nginx /opt/backups
```

### Copy the SSH configuration

```bash
sudo cp /etc/ssh/sshd_config /opt/backups
```

### Copy the Netplan configuration

```bash
sudo cp /etc/netplan/*.yaml /opt/backups
```

### Create the compressed archive

```bash
sudo tar -czf /opt/backups/server-backup.tar.gz /opt/backups
```

---

## Verification

Verify that the backup directory contains the copied files.

```bash
ls -lh /opt/backups
```

### Screenshot

<img width="652" height="128" alt="image" src="https://github.com/user-attachments/assets/7f4adcb4-8a4a-4f30-b9c4-932e87adaa5b" />

---

Verify the contents of the compressed archive.

```bash
tar -tf /opt/backups/server-backup.tar.gz
```

### Screenshot

<img width="402" height="786" alt="image" src="https://github.com/user-attachments/assets/9873aec0-abb3-4a12-bce2-283ff01bac2c" />

---

## Security Considerations

The backup archive contains system configuration files.

If the archive is stored externally, appropriate access controls should be applied to prevent unauthorized access.

---

## Restore Procedure

Example:

sudo tar -xzf /opt/backups/server-backup.tar.gz -C /

---

## File Locations

| File | Purpose |
|------|---------|
| /opt/backups | Backup storage |
| /etc/nginx | Nginx configuration |
| /etc/ssh/sshd_config | SSH configuration |
| /etc/netplan | Network configuration |

---

## Future Improvements

- Automate backup execution using Cron
- Schedule backups with Cron
- Encrypt backup archives
- Implement backup rotation
- Store backups on another system
- Document the restore procedure

---

## What I Learned

During this implementation I learned:

- How to create manual backups of Linux configuration files
- How to preserve server configurations before making changes
- How to create compressed archives using tar
- How to verify archive contents
- Why backups are an essential part of infrastructure administration

---

## References

Ubuntu Server Documentation - https://ubuntu.com/server/docs/

GNU Tar Documentation - https://www.gnu.org/software/gv/manual/

---

## Verification Checklist

- [x] Backup directory created
- [x] Configuration files copied
- [x] Backup archive created
- [x] Archive verified
- [ ] Backup automation (planned)
- [ ] Restore procedure documented (planned)
