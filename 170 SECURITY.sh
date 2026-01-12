


#? firewall-cmd command: 

firewall-cmd # open and close ports in the local machine #! needed for splunk challenge
# (yum install firewalld)
sudo systemctl enable firewalld # enable firewalld from boot
sudo systemctl start firewalld # start firewalld daemon
sudo systemctl status firewalld # check status of firewalld proccess

firewall-cmd --list-all # list-all firewall-cmd configs: ports, Zones..
firewall-cmd --list-ports # list ports firewall-cmd 
firewall-cmd --add-service=http # Enable http service, effective until restart
firewall-cmd --add-port=443/tcp # Enable port 443/tcp, effective until restart.
firewall-cmd --permanent --add-port=443/tcp # Enable port 443/tcp immediately and permanently 
firewall-cmd --reload #! BANANA !!!:  reload may be needed every time after changes



#? ssh command:

ssh # secure remote connection to remote hosts (port #: 22 ) #! interview favorite
# Usage: ssh user_name@ip_address|domian 
ssh esteban@10.10.80.111 # secure remote connection using ip address
ssh esteban@wkst-lab2-0011 # secure remote connection using domain name
ssh esteban@10.10.80.111 -p 2222 # using port number: 2222
ssh -vvv esteban@wkst-lab2-0011 # [v]erbose: shows details in the login proccess, helpfull for troubleshooting

#? scp command:

scp # secure copy files to remote host (using ssh) #! interview question
# Usage: scp /path/to/file remote_username@remote_ip:/remote/path 
# scp [SOURCE] [DESTINATION]
scp /path/to/local_file esteban@wkst-lab2-0011:~/ # copy "local_file" from you currect machine to esteban's home directory in "wkst-lab2-0011"
scp /path/to/local_file esteban@10.10.80.111:~/ # copy "local_file" from you currect machine to esteban's home directory in "10.10.80.111"

scp esteban@wkst-lab2-0011:/path/to/remote_file /path/to/local_file # copy file from remote host
