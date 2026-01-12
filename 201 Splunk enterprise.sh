#! 132 Splunk enterprise (Receiver)
# https://www.youtube.com/watch?v=RaccexMm_Ts


wget -O splunk-9.2.1-78803f08aabb-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.2.1/linux/splunk-9.2.1-78803f08aabb-Linux-x86_64.tgz"
# download installer Splunk enterprise (Receiver) with [O]ther name, from splunk webside

sudo tar -xvzf splunk-9.2.1-78803f08aabb-Linux-x86_64.tgz -C /opt
# unarchive it in /opt/

export SPLUNK_HOME=/opt/splunk
# create "SPLUNK_HOME" variable

cd /opt/splunk/bin/
# move to the splunk's bin directory
# all splunk commads shoud be run here


sudo ./splunk enable boot-start # enable boot-start

splunker # use this as the "admin username" 
splunkerpass # use this password

sudo ./splunk start
# splunker
# splunkerpass
# The Splunk web interface is at http://10.10.0.191:8000

http://wkst-lab2-0015:8000

sudo firewall-cmd --list-all
sudo firewall-cmd --add-port=9997/tcp # open ports for splunk
sudo firewall-cmd --add-port=8000/tcp # open ports for website access
sudo firewall-cmd --permanent --zone=public --add-port=9997/tcp # open ports permanently for splunk
sudo firewall-cmd --permanent --zone=public --add-port=8000/tcp # open ports permanently for website access
# Enable port 9997/tcp immediately and permanently in public zone. To make the change effective immediately and also after restart we need two commands. The first command makes the change in runtime configuration, i.e. makes it effective immediately, until restart. The second command makes the change in permanent configuration, i.e. makes it effective after restart.

sudo firewall-cmd --reload #! BANANA !!!:  reload may be needed every time after changes


sudo ./splunk help # get help



#! GUI (Grafical user interface) config admin website console:

#? Add Forwarder port:

settings > Forwarding and receiving >  Configure receiving (+add new)

add port number: 9997


#? Check logs: 

apps > search and reporting > data summary > select host