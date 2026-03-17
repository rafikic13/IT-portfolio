# VLAN and Switching Labs (Cisco Packet Tracer)

## Overview

This project contains several switching and VLAN configuration exercises completed using Cisco Packet Tracer. The goal of these labs was to understand how VLAN segmentation works in a network and how switches communicate with each other using technologies such as EtherChannel and Spanning Tree Protocol.

The exercises demonstrate practical switch configuration, network segmentation, and redundancy mechanisms used in enterprise networks.

---

## Lab 1 – Inter-VLAN Communication

### Objective
Create a network where three computers are placed in different VLANs and allow communication between them using a router.

### Topology
Devices used:
- 1 router
- 1 switch
- 3 PCs

Each computer was assigned to a different VLAN:

VLAN 10  
VLAN 20  
VLAN 30  

The switch connects to the router using a trunk link.

### Concepts Demonstrated
- VLAN segmentation
- trunk configuration
- router-on-a-stick configuration
- inter-VLAN routing

### Result
After configuring the VLAN interfaces and router subinterfaces, all three hosts were able to communicate successfully using ping.

---

## Lab 2 – EtherChannel

### Objective
Create an EtherChannel connection between two multilayer switches.

### Topology
Devices used:
- 2 multilayer switches
- 4 physical links between switches

Each link operates at 1 Gbps.

### Concepts Demonstrated
- link aggregation
- EtherChannel configuration
- redundancy between switches
- increased bandwidth

### Result
The four links were successfully grouped into a single logical connection providing improved throughput and fault tolerance.

---

## Lab 3 – Spanning Tree Protocol

### Objective
Observe how Spanning Tree Protocol prevents switching loops.

### Topology
Devices used:
- 2 switches
- 2 PCs

Both hosts were configured on the same network:

192.168.20.0 /24

PC1: 192.168.20.1  
PC2: 192.168.20.2  

### Concepts Demonstrated
- root bridge election
- BPDU messages
- port states and roles
- loop prevention

### Result
Spanning Tree automatically selected a root bridge and placed redundant links into a blocking state to prevent loops.

---

## Skills Demonstrated

- VLAN configuration
- trunk configuration
- inter-VLAN routing
- EtherChannel link aggregation
- Spanning Tree Protocol
- switch configuration and troubleshooting
