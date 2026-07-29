#!/bin/bash

echo "===== Ubuntu Home Server Health Check ====="
echo

echo "Hostname:"
hostname

echo
echo "Uptime:"
uptime

echo
echo "Disk Usage:"
df -h /

echo
echo "Memory Usage:"
free -h

echo
echo "Nginx Status:"
systemctl is-active nginx

echo
echo "SSH Status:"
systemctl status ssh

echo
echo "Firewall Status:"
ufw status | head -n 5

echo
echo "Docker Version:"
docker --version

echo
echo "Health check completed."
