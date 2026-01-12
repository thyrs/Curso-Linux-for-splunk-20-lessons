
#! PORTS AND DNS

#? ss command:

ss # displays socket statistics (port) #! interview favorite
# Usage: ss [ OPTIONS ]
ss -tulpin # ss: shows [l]istening ports in protocol [t]cp and [u]dp, [p]rocess ID, show only port [n]umber

sudo ss -tulpin #  Not all processes could be identified, #! you would have to be root to see it all.

#? netstat command:

netstat # shows network statistics (yum install net-tools) #! interview favorite 
netstat -alunpt # netstat: displays [a]ll [l]istening ports/sockets in [t]cp and [u]dp and display [P]ID/Program in [n]umeric format
sudo netstat -alunpt # (Not all processes could be identified, non-owned process info will not be shown, #! you would have to be root to see it all..)
netstat -ua # all sockets, display only UDP


#? telnet command: 

telnet # insecure remote conection, used to check ports in remote hosts  #! interview favorite
# Usage: telnet [hostname|ipaddress] [port_number] (yum install telnet)
telnet b747b166991c.mylabserver.com 9997
telnet 10.10.80.117 9997
# press ctrl + ], then type quit to exit (if needed)
# https://superuser.com/questions/486496/how-do-i-exit-telnet
"Connection refused" # means the port is open but the telnet connection was not accepted
"No route to host" # means the port is closed



#! 109.4 Configure client side DNS:
* __Objectives:__
    - Configure local name resolution and use remote DNS servers.
    - Modify the order in which name resolution is done. 
    - Debug errors related to name resolution.

#* Important files terms and utilities:

#? /etc/hosts:

/etc/hosts # shows local host config
# at the end of this file you may add your custom hostname


#? /etc/resolv.conf:

/etc/resolv.conf # DNS server ip address #! interview


#? /etc/nsswitch.conf:
# https://tecadmin.net/what-is-etc-nsswitch-conf-file/ --

/etc/nsswitch.conf # file that specifies how the system should switch between different name service providers
man /etc/nsswitch.conf

```
hosts:          files dns
# The above entry tells the order to resolving any domain name. First, the system will check domain mapping in files (/etc/hosts), If a matching entry is found it will use it, else the system will check with the DNS servers.
```

#How to install dig, nslookup, host commands (yum install bind-utils)

#? host command:

host google.com # dns resolution #! interview favorite
nslookup google.com # dns resolution #! interview favorite


#? dig command:

dig # dns resolution
dig google.com # dns resolution


#? getent command:

getent # used to search on a databases: ahosts, aliases, gshadow, networks, rpc,ahostsv4, ethers, hosts, passwd, services
# Usage: getent [OPTION...] database [key ...]
getent passwd esteban # gets info about "esteban" in the "passwd" data-base
sudo getent shadow esteban

