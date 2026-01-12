#! Day 13 Splunk -->  Splunk Universal Forwarder
# https://www.youtube.com/watch?v=rs6q28xUd-o
# https://linuxconfig.org/redhat-8-open-and-close-ports


#? Machine username: esteban (your_username)

# setting up reciver with this ip and port number: 10.10.0.191:9997

wget -O splunkforwarder-9.2.1-78803f08aabb-Linux-x86_64.tgz "https://download.splunk.com/products/universalforwarder/releases/9.2.1/linux/splunkforwarder-9.2.1-78803f08aabb-Linux-x86_64.tgz"
# Download splunk forwarder with [O]ther name.(from splunk website)

sudo tar -xvzf splunkforwarder-9.2.1-78803f08aabb-Linux-x86_64.tgz -C /opt
# unarchive the files in /opt
# -x, --extract, --get       extract files from an archive
# -v, --verbose              verbosely list files processed
# -z, --gzip, --gunzip, --ungzip   filter the archive through gzip
# -f, --file=ARCHIVE         use archive file or device ARCHIVE
# -C, --directory=DIR        change to directory DIR

cd /opt/splunkforwarder/bin/
# move to the folder where you can execute the "splunk commands"

export SPLUNK_HOME=/opt/splunkforwarder #! cascara de banano
# Unpacking your tgz file does not set environment variables.
# https://community.splunk.com/t5/Getting-Data-In/Couldn-t-determine-SPLUNK-HOME-or-SPLUNK-ETC-SETTING-SPLUNKHOME/m-p/380480#

sudo chown -RP esteban:esteban /opt/splunkforwarder/ #! cascara de banano
# Ensure all files and directories are owned by the user(esteban) you intend to run as

sudo ./splunk start --accept-license
# start splunk and accept the license
# use stop/start if needed
#! you should be in the splunk binaries directory: /opt/splunkforwarder/bin  

splunker # use this as the "admin username" 
splunkerpass # use this password

sudo ./splunk enable boot-start -user esteban
# boot-start enable, splunk starts running every time you turn on the machine
# splunk is currently running, please stop it before running enable/disable boot-start

sudo ./splunk add forward-server 10.10.0.191:9997
# sudo ./splunk add forward-server {host_name_or_ip}:{port_number}
# set up the "reciver server"
# user remove/add if needed

splunker # use this as the "admin username" 
splunkerpass # use this password

sudo ./splunk add monitor -auth splunker:splunkerpass /var/log/maillog
# sends all the logs of "/var/log/maillog" to the splunk server-reciever
# user remove/add if needed

sudo ./splunk 

#? show commands:

sudo ./splunk list monitor # shows logs to be forward
sudo ./splunk list forward-server # shows forward-server status


#? TESTING:

logger -t TEST -p mail.err 'TESTING!!!'
# create a "testing log" by using logger command

cat /var/log/maillog | tail -5
# verify "testing log" was created 
# May  8 15:55:04 CENTOS-192 TEST[2518]: TESTING!!!


