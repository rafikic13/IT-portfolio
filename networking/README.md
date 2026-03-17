# Networking Projects – Cisco Packet Tracer

This section contains networking labs created using Cisco Packet Tracer during my IT program at Collège de Rosemont.

---


## Objective
Configure two machines on the same internal network and verify connectivity using network commands.

## Network Topology
The topology consists of:

- 1 Switch
- 2 PCs
- Straight-through Ethernet connections

Both machines are connected to the switch and configured in the same IPv4 network.

## IP Address Configuration

Machine 1  
IP address: 192.172.14.1  
Subnet mask: 255.255.255.0  

Machine 2  
IP address: 192.172.14.254  
Subnet mask: 255.255.255.0  

Network: 192.172.14.0 /24

## Steps Performed

1. Added two PCs and one switch in Cisco Packet Tracer
2. Connected both machines to the switch using straight-through cables
3. Configured IPv4 addresses manually on each PC
4. Verified network connectivity using the `ping` command

## Connectivity Test

Machine 1 → ping 192.172.14.254

Result:
Packets sent: 4  
Packets received: 4  
Packets lost: 0

Machine 2 → ping 192.172.14.1

Result:
Successful replies confirming both machines can communicate on the network.

## Skills Demonstrated

- IPv4 addressing
- basic network topology
- switch connectivity
- network testing with ping
- Cisco Packet Tracer usage
