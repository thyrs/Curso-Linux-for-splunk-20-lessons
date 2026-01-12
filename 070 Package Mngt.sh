#! 102.4 Use Debian package management:
* __Objectives:__
    - Debian (ubuntu, xubuntu, Mint, Kali Linux, POP OS)
    - Install, upgrade and uninstall Debian binary packages.
    - Find packages containing specific files or libraries which may or may not be installed.

/usr/bin/ # directory with the binary files (programs in the system) #!interivew
/usr/share/doc/ # documentation for installed packages #! CERT


#* Important files terms and utilities:

#? wget command

wget url_for_download # this web utility allows you to download content directly on the cli #! Interview
wget http://ftp.de.debian.org/debian/pool/main/c/cowsay/cowsay_3.03+dfsg2-8_all.deb # download debian binary "cowsay"
cowsay hello esteban # configurable talking cow 


#? dpkg command:

dpkg # "Debian package manager", for packages stored locally 
dpkg -i path/to/file.deb # [i]nstall a package
dpkg -r <package_name> # [r]emove a package
dpkg -l <pattern> # [l]ist installed packages


#? apt-get command:

apt-get # full name #! CERT
apt # "Advance Package Tool" ubunto package manager, to install packages from repositories

sudo apt update # Update the list of available packages and versions 
# (it's recommended to run this before other `apt` commands) #! casacara de banano
apt search <pattern> # Search for a given package pattern
sudo apt install cmatrix # install the "cmatrix" utility
sudo apt remove cmatrix # Remove a package (using `purge` instead also removes its configuration files)
sudo apt upgrade -y # Upgrade all installed packages to their __newest available versions__. Say [y]es to confimation

apt list # List all packages in repository
apt list --installed # List installed packages


/etc/apt/sources.list.d/ubuntu.sources # ubuntu repository configuration file



#! 102.5 Use RPM and YUM package management:
* __Objectives:__
    - Red Hat based (centos, fendora, rocky...)
    - Install, re-install, upgrade and remove packages using RPM, YUM and Zypper.
    - Obtain information on RPM packages such as version, status, dependencies, integrity and signatures.

#* Important files terms and utilities:

wget https://dl.fedoraproject.org/pub/epel/10/Everything/aarch64/Packages/c/cowsay-3.8.4-3.el10_2.noarch.rpm
rpm -qa | grep cowsay
sudo rpm cowsay-3.8.4-3.el10_2.noarch.rpm

#? rpm command:

rpm # "Red hat Package Manager", for packages stored locally #! Cert
rpm -i /path/to/package.rpm # To [i]nstall a package, #!final proyect
rpm -e <package> # To [e]rase a package
rpm -qa # To [q]uery [a]ll installed packages

#? yum command:  

yum # also dnf,  Package management utility for RHEL(Red hat), Fedora, and CentOS (for older versions).
sudo yum update # Update packages and versions (it's recommended to run this before other `yum` commands):
sudo yum install <package> # To install the latest version of a package, example nginx
sudo yum remove <package> # To remove a package
sudo yum search <package> # To search for a package



#? zypper command:
zypper # SUSE & openSUSE package management utility.
sudo zypper refresh # Update packages and versions (it's recommended to run this before other `zypper` commands):
sudo zypper install <package> # To install the latest version of a package
sudo zypper remove <package> # To remove a package
sudo zypper search <package> # To search for a package


#? systemctl command:

systemctl # service manager #! interview
systemctl status <package>d # show status, nginx
systemctl start <package>d # start the service
systemctl enable <package>d # enable boot start (el servicio enciende automaticamente con la maquina)
systemctl stop <package>d # stop the service

#? example:

apache2  # HTTP server for linux, also nginx is famous HTTP server #! Cert


sudo apt update
sudo apt install apache2 # install HTTP server for linux

systemctl status apache2 # show status
systemctl start apache2 # start the service
systemctl enable apache2 # enable boot start (se corre cada vez que se prende la maquina)
systemctl stop apache2 # stop the service


#! Linux Software Categories Overview

#? Web Servers & Networking  
# Tools for hosting websites, APIs, or managing network traffic. Highly efficient for servers.  
Key Examples:
- Apache (modular HTTP server, great for dynamic sites)
- NGINX (lightweight, excels at high concurrency and reverse proxying) #! CERT

#? Graphics & Design  
# Apps for image editing, vector design, and 3D modeling. Linux rivals Adobe suites with free alternatives.  
Key Examples:
- GIMP (raster editor like Photoshop) #! CERT
- Inkscape (vector graphics like Illustrator) #! CERT
- Blender (3D creation suite for modeling/animation) #! CERT

#? Desktop Environments & Productivity  
# Window managers, office suites, and daily tools for a polished user experience.  
Key Examples:
- GNOME/KDE Plasma (full DEs)
- LibreOffice (word processing/spreadsheets)
- Firefox/Thunderbird (browsing/email)

#? System Tools & Utilities  
# Core utilities for file management, monitoring, and automation. Mostly CLI-based.  
Key Examples:
- Bash/Zsh (shells)
- htop (process viewer)
- Vim/Nano (text editors)

#? Programming & Development  
# IDEs, compilers, and version control for coders. Linux is a dev paradise.  
Key Examples:
- VS Code (editor)
- GCC (compiler)
- Git (version control)

#? Multimedia & Entertainment  
# Audio/video players, editors, and games. Growing Steam support boosts gaming.  
Key Examples:
- VLC (media player)
- Audacity (audio editor)
- Steam (gaming platform)

#? Security & Privacy  
# Firewalls, encryption, and VPNs. Linux's kernel-level security shines here.  
Key Examples:
- UFW/Firewalld (firewalls)
- VeraCrypt (encryption)
- Tor Browser