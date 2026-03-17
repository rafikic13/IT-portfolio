# ESXi-Lab

Virtualization infrastructure project demonstrating the deployment and configuration of multiple virtualization platforms and container technologies.

This lab focuses primarily on **VMware ESXi cluster configuration**, while also demonstrating virtualization with **Hyper-V**, **Proxmox**, and containerization using **Docker**.

Technologies used:

- VMware ESXi 8
- VMware vCenter
- Microsoft Hyper-V
- Proxmox VE
- Docker
- Windows Server 2022
- Windows 10
- Debian Linux

---

# 1. VMware ESXi Cluster Deployment

## Objective

Deploy and manage a VMware ESXi cluster environment using vCenter.

## Environment

- 2 ESXi Hosts  
- vCenter Server  
- Windows 10 Virtual Machine  

## Steps Performed

1. Installed two ESXi hosts and configured their network settings.
2. Created a Windows 10 virtual machine on one of the hosts.
3. Created a cluster inside vCenter.
4. Enabled cluster services:

- DRS (Distributed Resource Scheduler)  
- vSphere HA (High Availability)  
- vSAN (Virtual Storage Area Network)  

5. Added both ESXi hosts to the cluster.
6. Migrated the Windows 10 virtual machine between hosts.

## Result

The Windows 10 VM was successfully migrated between hosts, demonstrating resource sharing and high availability within the ESXi cluster.

---

# 2. Hyper-V Virtual Networking

## Objective

Deploy a small virtual network using Microsoft Hyper-V and configure NAT to share internet connectivity.

## Environment

Server: Windows Server 2022  
Virtual machines:

- DC22 (Server)  
- W10 (Client)  

## Steps Performed

1. Installed the Hyper-V role on Windows Server 2022.
2. Created two virtual switches:

External switch → internet access  
Internal switch → communication between virtual machines  

3. Created two virtual machines:

- DC22  
- W10  

4. Assigned a static IP address to the internal interface of DC22:

192.168.115.1/24

5. Configured NAT on DC22 using PowerShell.

6. Connected the Windows 10 VM to the internal network.

## Result

The Windows 10 machine can communicate with DC22 and access the internet through NAT.

---

# 3. Proxmox Virtualization

## Objective

Deploy a virtualization environment using Proxmox and demonstrate clustering capabilities.

## Steps Performed

1. Installed Proxmox VE on a host.
2. Created virtual machines:

- Windows 10  
- Windows Server 2022  

3. Configured networking between the virtual machines.

### Cluster Configuration

1. Installed a second Proxmox host.
2. Created a Proxmox cluster.
3. Migrated Windows virtual machines between hosts.

## Result

The Proxmox cluster allows centralized management and VM migration across hosts.

---

# 4. Docker Containerization

## Objective

Demonstrate container deployment using Docker on Linux.

## Environment

Operating System: Debian Linux

## Installation Verification

'docker --version'

## Images Used

- nginx  
- alpine  

## Containers Created

Web server container:

'docker run -d --name webserver -p 8080:80 nginx'

Interactive container:

'docker run -it --name shelltest alpine sh'

## Verification Commands

'docker ps'

'docker ps -a'

'docker stats --no-stream'

Testing the web server:

'curl http://localhost:8080'

## Result

The Nginx container runs a web server accessible through port 8080 while the Alpine container provides a lightweight interactive shell environment.

---

# Skills Demonstrated

- VMware ESXi cluster deployment
- VM migration between ESXi hosts
- Hyper-V virtualization and networking
- NAT configuration
- Proxmox virtualization and clustering
- Linux container deployment using Docker
- Virtual infrastructure design
