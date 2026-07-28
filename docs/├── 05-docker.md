# Docker Engine

## Objective

Install Docker Engine on the Ubuntu Home Server and verify that containerized applications can be downloaded, executed, and accessed successfully.

Docker will serve as the foundation for future services deployed on this server using Docker Compose.

---

## Environment

| Component | Value |
|-----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Container Runtime | Docker Engine |
| Installation Method | Official Docker installation script |

---

## Why Docker?

Docker allows applications to run inside isolated containers without modifying the host operating system.

For this project, Docker simplifies application deployment and will later be used to host multiple services behind an Nginx reverse proxy.

---

## Installation

Download the official Docker installation script.

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
```

Run the installation script.

```bash
sudo sh get-docker.sh
```

Verify the installation.

```bash
docker version
```

<img width="481" height="450" alt="image" src="https://github.com/user-attachments/assets/488285b7-e62b-4806-8477-f3c6fac29ff5" />


---

## Running the First Container

To verify communication with the Docker daemon, the official Hello World container was executed.

```bash
docker run hello-world
```

The container downloaded successfully, executed, displayed its verification message, and exited normally.

<img width="624" height="358" alt="image" src="https://github.com/user-attachments/assets/47931afd-e4e8-4f22-8d31-bd5fd9735f89" />


---

## Deploying a Test Web Server

To verify networking and port mapping, an Nginx container was deployed.

```bash
docker run -d \
  --name nginx-test \
  -p 8080:80 \
  nginx
```

Verify that the container is running.

```bash
docker ps
```
<img width="1067" height="54" alt="image" src="https://github.com/user-attachments/assets/c8dc42b6-5337-4337-8e1e-c0d5500919eb" />

---

## Verification

Verify installed images.

```bash
docker images
```

<img width="1281" height="96" alt="image" src="https://github.com/user-attachments/assets/7578612a-e68c-42cc-ae14-065d357f8192" />


Verify all containers.

```bash
docker ps -a
```

<img width="1282" height="146" alt="image" src="https://github.com/user-attachments/assets/2f654c1c-4a97-4934-a427-d7f17299595e" />


Verify the web server.

```
http://192.168.0.150:8080
```

The default Nginx page confirms that Docker networking and port forwarding are working correctly.

<img width="2559" height="1032" alt="image" src="https://github.com/user-attachments/assets/c9c53827-7df4-4308-a474-fe349e7353bf" />


---

## File Locations

| File / Directory | Purpose |
|------------------|---------|
| `/var/lib/docker` | Docker images, containers, and volumes |
| `/etc/docker` | Docker configuration files |
| `/var/run/docker.sock` | Docker daemon socket |

---

## Security Considerations

Docker requires elevated privileges to manage containers.

For this home lab, Docker commands are currently executed using `sudo`.

Additional security features, such as rootless Docker and user permissions, will be explored later.

---

## Implementation Notes

Docker was successfully installed and verified using both the Hello World container and an Nginx container.

The Nginx container was deployed only for testing purposes and will be replaced with Docker Compose deployments in future stages of this project.

---

## What I Learned

- Installing Docker Engine
- Verifying Docker installation
- Pulling container images
- Running containers
- Publishing container ports
- Inspecting running containers
- Understanding the relationship between containers and the host operating system

---

## Future Improvements

- Install Docker Compose
- Deploy multiple services
- Create custom Docker networks
- Configure persistent volumes
- Reverse proxy Docker applications with Nginx

---

## References

- Docker Engine Installation Guide - https://docs.docker.com/engine/install/
- Docker Get Started Guide - https://docs.docker.com/get-started/
- Docker CLI Reference - https://docs.docker.com/reference/cli/docker/

---

## Verification Checklist

- [x] Docker Engine installed
- [x] Docker daemon running
- [x] Docker installation verified
- [x] Hello World container executed
- [x] Nginx container deployed
- [x] Container accessible through port mapping
