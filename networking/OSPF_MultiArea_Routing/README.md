# OSPF Multi-Area Routing Lab

## Overview

This project demonstrates the configuration of dynamic routing using the OSPF protocol in Cisco Packet Tracer. The lab focuses on building a multi-area OSPF network with multiple routers and verifying connectivity between hosts located in different networks.

---

## Network Topology

Devices used:

- 4 routers
- 2 client PCs
- multiple subnets

The network is divided into three OSPF areas:

Zone 1  
Zone 2  
Zone 3  

Each zone contains different routers and networks.

Example subnets used:

192.168.50.0/24  
192.168.40.0/24  
192.168.30.0/24  
192.168.20.0/24  
192.168.10.0/24  

Client hosts are connected at the edges of the network.

---

## Configuration Tasks

The following configuration tasks were performed:

- configure router interfaces with appropriate IP addresses
- enable OSPF routing on each router
- assign networks to the correct OSPF areas
- configure passive interfaces where necessary
- verify neighbor relationships between routers

---

## Concepts Demonstrated

- dynamic routing
- OSPF neighbor relationships
- multi-area OSPF design
- route propagation between networks
- network troubleshooting using ping

---

## Result

After configuring OSPF on all routers, the routing tables were successfully populated and both client hosts were able to communicate across the different network segments.

This confirms that routing information was correctly exchanged between the routers.

---

## Skills Demonstrated

- router configuration
- OSPF routing protocol
- multi-area OSPF architecture
- IP subnet configuration
- connectivity testing
- network troubleshooting
