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

<img width="672" height="116" alt="image" src="https://github.com/user-attachments/assets/227c367d-99f6-4bc9-aea9-170c89550bc7" />


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

### Problem

Password authentication was initially used instead of SSH keys.

### Solution

Generated an SSH key pair and copied the public key to the server using `ssh-copy-id`.

---

## Future Improvements

- Disable password authentication
- Disable root login
- Change the default SSH port (optional)
- Configure Fail2Ban
- Restrict SSH access using UFW

---

## What I Learned

- How SSH encrypts remote connections
- Difference between password and key-based authentication
- How public/private key authentication works
- How to verify the SSH service status
- How to securely access a Linux server remotely

---

## References

This configuration was implemented using the official ssh documentation.

https://www.openssh.org/manual.html
