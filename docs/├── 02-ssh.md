# SSH Configuration

## Objective

Configure and verify secure remote access to the Ubuntu Server using OpenSSH and public key authentication.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| SSH Server | OpenSSH |
| Authentication | Public Key |
| Client | Windows 11 |
| Server IP | 192.168.0.150 |

---

## Why SSH?

SSH is the primary method used to remotely administer this Ubuntu Server without requiring direct access to the virtual machine console.

Using SSH keys instead of passwords provides stronger authentication and helps protect against password-based attacks.

---

## Installation

Verify that the OpenSSH service is installed and running.

```bash
sudo systemctl status ssh
```

---

## SSH Key Authentication

Generate a key pair on the client machine.

```bash
ssh-keygen
```

Copy the public key to the server.

```bash
ssh-copy-id kali@192.168.0.150
```

---

## Connect to the Server

```bash
ssh kali@192.168.0.150
```

---

## Verification

### SSH Service

```bash
systemctl status ssh
```

<img width="671" height="239" alt="image" src="https://github.com/user-attachments/assets/64d7c810-a14e-4d0f-842e-c70b434aa0ab" />



---

### SSH Login

```bash
ssh kali@192.168.0.150
```

<img width="700" height="753" alt="image" src="https://github.com/user-attachments/assets/9f4f80bd-c8e9-4a6a-93ce-99c6b4dedf55" />


---

### Authorized Keys

```bash
cat ~/.ssh/authorized_keys
```

> **Note:** The public key has been partially hidden for security purposes.

<img width="562" height="161" alt="partial_blur" src="https://github.com/user-attachments/assets/4ff55872-33ae-44fd-8891-eadc694066d9" />

---

## Problems Encountered

### Initial Authentication

Initially the server accepted password authentication.

To improve security and prepare the server for future hardening, SSH key authentication was configured using an RSA/Ed25519 key pair and `ssh-copy-id`.

---

## Future Improvements

- Disable root login
- Disable password authentication
- Configure Fail2Ban
- Restrict SSH access with UFW
- Change the default SSH port (optional)

---

## What I Learned

- How SSH uses public/private key authentication
- How to verify that the SSH service is running
- How to securely connect to a Linux server from Windows
- Why key authentication is preferred over passwords

---

## References

The configuration was implemented using the official OpenSSH documentation.

- OpenSSH Manual – https://www.openssh.org/manual.html
- Ubuntu Server Guide – OpenSSH

---

## Commands Used

```bash
systemctl status ssh
ssh-keygen
ssh-copy-id kali@192.168.0.150
ssh kali@192.168.0.150
```

## File Locations

| File | Purpose |
|------|---------|
| /etc/ssh/sshd_config | SSH server configuration |
| ~/.ssh/authorized_keys | Stores authorized public keys |

---

## Verification Checklist

- [x] SSH service is running
- [x] Remote connection established
- [x] Public key authentication configured
- [x] Server reachable from Windows client
