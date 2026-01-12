#! Day 07 Network port -->


# 109.1 Fundamentals of internet protocols
* __Objectives:__
    - Knowledge about common TCP and UDP ports and services (20, 21, 22, 23, 25, 53, 80, 110, 123, 139, 143, * 161, 162, 389, 443, 465, 514, 636, 993, 995)
    - Knowledge about the differences and major features of UDP, TCP and ICMP.

### Important files terms and utilities:


#? /etc/services :

/etc/services # contains a list of all services
cat /etc/services | grep " 22\/" # filter output to get the info about port#= "22"

| #    | ACRO        | TCP/ UDP | Brief Description                                  |
| ---- | ----------- | -------- | -------------------------------------------------- |
| 20   | FTP-data    | TCP      | __File__ Transfer Protocol                         |
| 21   | FTP-control | TCP      | __File__ Transfer Protocol                         |
| *22  | SSH         | TCP      | Secure shell, for __remote access__ (INSECURE)     |
| *23  | Telnet      | TCP      | __remote access__ to  systems (INSECURE)           |
| 25   | SMTP        | TCP      | Simple __Mail__ Transfer Protocol                  |
| *53  | DNS         | UDP      | Domain Name System (paginas amarillas, __113__)    |
| *80  | HTTP        | TCP      | Hypertext Transfer Protocol (__Websites__)         |
| 110  | POP3        | TCP      | Post Office Protocol v3 __Mail__                   |
| 123  | NTP         | UDP      | Network __Time__ Protocol                          |
| 139  | netbios     | TCP/UDP  | netbios __network boot__                           |
| 143  | IMAP        | TCP      | Internet Message Access Protocol __Mail__          |
| 161  | SNMP        | UDP      | Simple __Network Mgmt__ Protocol                   |
| 162  | SNMP-trap   | UDP      | Simple __Network Mgmt__ Protocol Traps             |
| 389  | LDAP        | UDP      | Lightweight __Directory Access__ Protocol          |
| *443 | HTTPs       | TCP      | Hypertext Transfer Protocol (__SECURE Websites__)  |
| 465  | SMTPs       | TCP/UDP  | Simple __Mail__ Transfer Protocol (SSL > SECURE)   |
| 514  | syslog      | UDP      | __system logs__                                    |
| 636  | LDAPs       | TCP      | Lightweight __Directory Access__ Protocol with SSL |
| 993  | IMAPs       | TCP      | IMAP over SSL                                      |
| 995  | POP3s       | TCP      | POP3 over SSL                                      |

TCP vs UDP

TCP # Transmission Control Protocol
UDP # User Datagram Protocol

TCP # retransmission of the info
UDP # DOES NOT retransmit

TCP # tranferencia de dinero
UDP # video llamada en vivo

TCP, UDP, ICMP

#                     ┌──┐
#    ┌────────────────┤IP├─────────────────┐
#    │                └─┬┘                 │
#  ┌─┴──┐             ┌─┴─┐              ┌─┴─┐
#  │ICMP│             │TCP│              │UDP│
#  └────┘             └───┘              └───┘
| ICMP         | TCP                 | UDP                 |
| ------------ | ------------------- | ------------------- |
| PING echo    | (retransmits)       | (Doesnt retransmit) |
| PING request | WEB traffic         | Audio and Video     |
|              | SecureConections    |                     |
|              | Three way handshake |                     |
|              | -HTTP 80            | -DNS 53             |
|              | -HTTPS 443          | -DHCP 67-68         |
|              | -SSH 22             | -TFTP 69            |
|              | -Telnet 23          |                     |
