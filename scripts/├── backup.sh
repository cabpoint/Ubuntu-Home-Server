
#!/bin/bash

BACKUP_DIR="/opt/backups"

mkdir -p "$BACKUP_DIR"

cp -r /etc/nginx "$BACKUP_DIR"

cp /etc/ssh/sshd_config "$BACKUP_DIR"

cp /etc/netplan/00-installer-config.yaml "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/server-backup.tar.gz" "$BACKUP_DIR"

echo
echo "Backup completed successfully."
