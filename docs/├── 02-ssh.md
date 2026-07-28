# SSH Configuration

## Objective

Configure secure remote access to the Ubuntu Server using OpenSSH and public key authentication.

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

SSH (Secure Shell) allows encrypted remote administration of Linux systems.

Using SSH keys instead of passwords provides stronger authentication and helps protect against password-based attacks.

---

## Installation

Verify that the OpenSSH server is installed.

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

- Disable password authentication
- Disable root login
- Change the default SSH port (optional)
- Configure Fail2Ban
- Restrict SSH access using UFW

---

## What I Learned

- How SSH uses public/private key authentication
- How to verify that the SSH service is running
- How to securely connect to a Linux server from Windows
- Why key authentication is preferred over passwords

---

## References

This configuration was implemented using the official ssh documentation.

https://www.openssh.org/manual.html

---

## Commands Used

systemctl status ssh

ssh-keygen

ssh-copy-id

ssh kali@192.168.0.150
