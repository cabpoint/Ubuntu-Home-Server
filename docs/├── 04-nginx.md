# Nginx Configuration

## Objective

Install and configure Nginx as the primary web server for the Ubuntu Home Server.

The goal was to understand how Nginx serves web content, how server blocks are configured, and how configuration changes are validated before deployment.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Web Server | Nginx |
| Server IP | 192.168.0.150 |
| Firewall | UFW |

---

## Why Nginx?

Nginx is a lightweight, high-performance web server commonly used for serving websites, reverse proxying applications, and load balancing.

For this home lab, it is currently used to serve static web content and will later be configured as a reverse proxy for Docker applications.

---

## Installation

```bash
sudo apt update
sudo apt install nginx
```

Verify the installation:

```bash
sudo systemctl status nginx
```

**Screenshot:**
- Nginx service running

---

## Configuration

A dedicated server block was created instead of using the default configuration.

```nginx
server {
    listen 80;
    listen [::]:80;

    server_name _;

    root /var/www/html;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

After editing the configuration, it was tested before restarting the service.

```bash
sudo nginx -t
sudo systemctl restart nginx
```

**Screenshots:**
- `nginx -t`
<img width="1277" height="101" alt="image" src="https://github.com/user-attachments/assets/e6982038-4d52-413e-847c-3af623993918" />


- Configuration file
<img width="364" height="161" alt="image" src="https://github.com/user-attachments/assets/2e050b66-f1c6-4ace-9e50-6384a9d25e92" />


- Nginx service running
<img width="953" height="340" alt="image" src="https://github.com/user-attachments/assets/6bd91fae-f550-4efe-af07-871f682cbdd2" />



---

## Verification

The web server was verified by opening:

```
http://192.168.0.150
```

The custom homepage loaded successfully.

**Screenshot:**
<img width="312" height="199" alt="image" src="https://github.com/user-attachments/assets/ceb71199-a444-419f-b1ac-f23f5c842227" />


---

## Troubleshooting

### Issue 1 - Invalid URL Prefix

**Problem**

```
invalid URL prefix
```

**Cause**

The `proxy_pass` directive was missing the required `http://` prefix.

**Solution**

The configuration was corrected and validated using:

```bash
sudo nginx -t
```

---

### Issue 2 - 400 Bad Request

**Problem**

```
400 Bad Request
Request Header Or Cookie Too Large
```

**Cause**

Nginx was configured to proxy requests back to itself, creating a request loop.

**Solution**

The reverse proxy configuration was removed and replaced with a static web server configuration.

---

### Issue 3 - Configuration Syntax Error

**Problem**

```
directive "index" is not terminated by ";"
```

**Cause**

A semicolon was missing after the `index` directive.

**Solution**

The syntax was corrected and verified using:

```bash
sudo nginx -t
```

---

## Security Considerations

- UFW restricts incoming connections.
- Only HTTP is currently enabled.
- HTTPS will be configured later using Let's Encrypt.
- Apache was removed to simplify the server configuration.

---

## Implementation Notes

During the setup, both Apache and Nginx were tested.

After evaluating the configuration, Apache was removed and Nginx became the only web server installed.

Using a single web server simplifies maintenance and avoids unnecessary services running on the system.

---

## What I Learned

- Installing and managing the Nginx service
- Creating and enabling server blocks
- Validating configuration with `nginx -t`
- Serving static web content
- Troubleshooting configuration errors
- Understanding why a reverse proxy should point to a backend application instead of the same server

---

## Future Improvements

- Deploy Docker applications
- Configure Nginx as a reverse proxy
- Enable HTTPS using Let's Encrypt
- Configure HTTP to HTTPS redirection
- Add security headers

---

## References

- https://nginx.org/en/docs/
- https://documentation.ubuntu.com/server/

---

## Verification Checklist

- [x] Nginx installed
- [x] Service running
- [x] Configuration validated
- [x] Website accessible
- [x] Default site removed
- [x] Apache removed
