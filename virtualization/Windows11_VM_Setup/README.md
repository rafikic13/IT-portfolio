# Windows 11 Virtual Machine Deployment

## Overview

This project demonstrates the deployment and configuration of a Windows 11 virtual machine along with several system administration tasks. The objective of this lab was to practice virtualization, system configuration, storage management, networking, and security administration.

The virtual machine was created and configured following the requirements of the lab instructions.

---

## Virtual Machine Configuration

The virtual machine was created with the following specifications:

- Operating System: Windows 11 Pro
- Disk size: 100 GB
- RAM: 4 GB
- CPU: 4 processors
- Network Adapter: NAT

The VM disk was created and the Windows 11 ISO image was mounted to begin the installation of the operating system.

---

## Windows 11 Installation

The installation process included the following steps:

1. Created the virtual machine and attached the Windows 11 ISO image.
2. Started the installation and selected Windows 11 Pro.
3. Selected Custom installation.
4. Created a partition of 80 GB for the operating system.
5. Allowed Windows to complete the installation process.

During the installation process, Windows requires a Microsoft account if the system is connected to the internet. To bypass this requirement, the following command was used during setup:

`OOBE\BYPASSNRO`

This command restarts the installation process and allows the setup to continue without an internet connection.

---

## Initial System Configuration

After the installation was completed, several basic system settings were configured:

- Region: Canada
- Keyboard: US layout
- Computer name: RAPHAEL
- Local user account created
- Privacy settings disabled for ads, diagnostics, and location services

---

## User and Group Management

Two users and one group were created using the Windows command line.

Users created:

- CHEVALIER
- CHEVALIERE

Group created:

- ROYAL

Commands used:

`net user CHEVALIER /add`  
`net user CHEVALIERE /add`  
`net localgroup ROYAL /add`  
`net localgroup ROYAL CHEVALIER /add`  
`net localgroup ROYAL CHEVALIERE /add`

This configuration demonstrates basic Windows user and group administration.

---

## Storage Configuration

Additional storage devices were added to the virtual machine.

Steps performed:

1. Added two additional virtual disks of 4 GB each.
2. Opened Disk Management.
3. Converted the disks to dynamic disks.
4. Created a mirrored volume using both disks.

Configuration of the mirrored volume:

- File system: NTFS
- Drive letter: E
- Volume label: MIRROR VOLUME

This configuration provides disk redundancy using mirroring.

---

## Backup Configuration

A scheduled backup was configured to protect user data.

Backup configuration:

- Backup location: DVD drive
- Files backed up: User Documents folder
- Schedule: Weekly
- Day: Friday
- Time: 17:00

Backup configuration was performed through:

Control Panel → Backup and Restore (Windows 7)

---

## Disk Quota Configuration

A disk quota was configured on drive **E:** to limit storage usage.

Configuration:

- Quota management enabled
- Disk space limit: 200 MB per user
- Users exceeding the limit are denied additional disk usage

Verification was performed by logging in with a different user account and checking the available disk space.

---

## Network Configuration

The virtual machine uses NAT networking.

Network information was verified using the command:

`ipconfig /all`

Example configuration:

- IP Address: 192.168.240.142
- Subnet Mask: 255.255.255.0
- Default Gateway: 192.168.240.2
- DNS Server: 192.168.240.254

Connectivity was tested using:

`ping www.google.ca`

---

## Security Configuration

Basic security configurations were implemented.

### Windows Firewall

All firewall profiles were enabled through:

Windows Security → Firewall and Network Protection

### Antivirus

Avast antivirus was installed and configured.

Security configuration included:

- Quick system scan
- Scheduled weekly system scans

---

## Performance Monitoring

System performance monitoring tools were accessed using:

Ctrl + Alt + Delete → Task Manager → Performance

Additional monitoring tools:

- Resource Monitor
- System Information

These tools allow monitoring of:

- CPU usage
- RAM usage
- disk activity
- network usage

---

## Troubleshooting and Recovery

Windows recovery tools were tested to understand system repair options.

Recovery environment accessed through:

Settings → System → Recovery → Advanced Startup

Available repair options include:

- Startup Repair
- System Restore
- Advanced troubleshooting tools

These tools allow administrators to repair system boot issues or restore the system to a previous state.

---

## Skills Demonstrated

This project demonstrates several system administration and virtualization skills:

- Virtual machine deployment
- Windows 11 installation and configuration
- User and group management
- Disk management and mirroring
- Storage quota management
- Backup configuration
- Network configuration and testing
- Security configuration
- System monitoring and troubleshooting

These tasks simulate real-world system administration responsibilities within a virtualized environment.
