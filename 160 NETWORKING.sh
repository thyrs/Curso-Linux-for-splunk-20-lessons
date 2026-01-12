#! Day 08 NETWORKING -->



#! 109.3 Basic network troubleshooting:
* __Objectives:__
    - Debug problems associated with the network configuration.
    - Awareness of legacy net-tools commands.

#* Important files terms and utilities:


#? ip command:

ip  # network interfaces info #! interview favorite
ip addr # show ip address, MAC and interface name
ip address show eth0
ip link set eth0 down # turn off interface "eth0", from boot
ip link set eth0 up # turn on interface "eth0", from boot
ip route # shows DGW (default gateway) la salida al internet de la red

#? hostname command:

hostname # shows machine hostname "pretty name"
hostnamectl # shows machine hostname, OS, Architecture, 

#? ping command:

ping # test host rechability, uses ICMP
# Usage: ping <ipaddress/domain>
sudo ping 8.8.8.8 # test rechability of ip: '8.8.8.8'
ping google.com # test rechability of "google.com"
  ctrl+C # to cancel request

#? Traceroute command:

traceroute # Traceroute to a host (sudo yum install traceroute)
traceroute q# Traceroute using ip address
traceroute google.com # Traceroute using domian-name

#? ifconfig command:

ifconfig # old command to show interface info
ifconfig eth0 down # turn OFF interface "eth0" 
ifconfig eth0 up # turn ON interface "eth0" 


#? Red Hat Interface Configuration: 

/etc/sysconfig/network-scripts/ifcfg-<interface-name>
# use this path to find or create a network interface

#? Red Hat Interface Configuration file with DHCP (dynamic host configuration protocol):
```
DEVICE="eth0"      # name of the device
NM_CONTROLLED="no" # device is not NetworkManager managed
ONBOOT=yes         # activate interface automatically
TYPE=Ethernet      # type of interface
BOOTPROTO=dhcp     # use a DHCP to configure interface
```

#?: using static configuration:
```
BOOTPROTO=none        # use static configuration 
IPADDR=192.168.0.3    # set the IP address
NETMASK=255.255.255.0 # set the subnet mask
GATEWAY=192.168.0.1   # set the default router
DNS1=192.168.0.254    # set the primary DNS server
```

#? Debian Interface Configuration:

/etc/network/netplan
# directory contains files that are used to configure the interfaces.

# This file describes the network interfaces available on your system
# For more information, see netplan(5).

#? Debian Interface Configuration file with DHCP:
```
network:
    version: 2
    renderer: networkd
    ethernets:
        ens3:
            dhcp4: yes
```
#? Using static addresses would look like the following:
```
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      addresses:
        - 10.10.10.2/24
      gateway4: 10.10.10.1
      nameservers:
          search: [mydomain, otherdomain]
          addresses: [10.10.10.1, 1.1.1.1]
```
