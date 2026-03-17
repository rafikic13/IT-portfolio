# Networking Labs

This folder contains networking exercises completed during my network infrastructure training. The projects focus on core networking concepts such as VLAN segmentation, switching technologies, link aggregation, loop prevention, and dynamic routing.

All labs were implemented and tested using Cisco Packet Tracer. Each project includes the topology file (`.pkt`) and documentation describing the configuration and results.

---

# Topics Covered

These labs demonstrate practical configuration and troubleshooting of common networking technologies:

- VLAN configuration and network segmentation
- Inter-VLAN communication
- Switch trunking
- EtherChannel link aggregation
- Spanning Tree Protocol (STP)
- Dynamic routing with OSPF
- Network connectivity testing

---

# Lab Projects

## VLAN and Switching

This lab demonstrates how to segment a network using VLANs and allow communication between different VLANs through routing.

### Objectives

- Create multiple VLANs on a switch
- Assign devices to their respective VLANs
- Configure trunk links between network devices
- Enable communication between VLANs

### Concepts Demonstrated

- VLAN segmentation
- trunk configuration
- inter-VLAN routing
- network isolation between departments

---

## EtherChannel

This exercise demonstrates link aggregation between switches.

### Objectives

- Connect two switches using multiple physical links
- Configure EtherChannel to combine links into a single logical connection

### Concepts Demonstrated

- increased bandwidth between switches
- redundancy in case of link failure
- improved network reliability

---

## Spanning Tree Protocol (STP)

This lab explores how switches prevent network loops using Spanning Tree Protocol.

### Objectives

- observe root bridge election
- analyze port states and roles
- understand how loops are prevented

### Concepts Demonstrated

- BPDU messages
- root bridge selection
- port blocking and forwarding states

---

## OSPF Dynamic Routing

This routing lab demonstrates configuration of the OSPF protocol across multiple routers and networks.

### Objectives

- configure router interfaces and IP addressing
- enable OSPF routing
- exchange routing information between routers
- verify connectivity between remote networks

### Concepts Demonstrated

- OSPF neighbor relationships
- route propagation between networks
- multi-network connectivity
- routing verification using ping

---

# Tools Used

- Cisco Packet Tracer
- IP subnetting
- network simulation and testing tools

---

# Skills Demonstrated

- network topology design
- switch configuration
- routing configuration
- troubleshooting connectivity issues
- verifying network communication
