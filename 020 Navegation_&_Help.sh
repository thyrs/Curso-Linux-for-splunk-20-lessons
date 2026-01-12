#! Basic Navegation


#? - Install Vscode: Color codes: (better comments)

# ctrl+shift+` > abrir la terminal en VScode
# ctrl+/ > marca comentario

# comentarios*
#! hello
# ? hello
# TODO hello
# // hello


#?"Filesystem Hierarchy Standard"

#                             ┌───┐ > root directory                         
#   ┌─────────┬─────────┬─────┤ / ├──────┬──────┬────────┐   
#   │         │         │     └─┬─┘      │      │        │   
# ┌─┴──┐   ┌──┴──┐   ┌──┴─┐  ┌──┴──┐  ┌──┴──┐ ┌─┴──┐  ┌──┴──┐
# │/etc│   │/root│   │/mnt│  │/boot│  │/home│ │/var│  │/proc│
# └────┘   └─────┘   └────┘  └─────┘  ├─────┤ └────┘  └─────┘
#                                     │     │                
#                                ┌────┴───┐ └─┬────┐         
#     > YOUR home directory  >>> │/esteban│   │/rob│        
#                                └────────┘   └────┘         
#                                    

/ # Disk-Based, The Root File System #! interview
/etc # [e]xtended [t]ext [c]onfiguration, directory holds system configuration files. #! interview
/root #* This is the default home directory location for the root user.
/mnt # This directory is used to mount a file system temporarily.
/boot #* Linux kernel, boot support files, and boot configuration files.
/home # store user home directories and other user contents. #! interview
/opt # hold [opt]ional software that may need to be installed on the system.
/usr # (UNIX System Resources) contains most of the system files.
/var # contain log, status, spool, lock, and other [var]iable data. #!Cert
/tmp # The Temporary Directory, a reposito[l]ry for temporary files
/dev # used to store [dev]ice nodes for physical hardware and virtual devices.
/proc # used to maintain information about the current state of the running kernel.
/run # /run/media, is also used to automatically mount CD/DVD and flash USB.
/sys # info about hardware devices, drivers, and some kernel features


#? "ABSOLUTE path vs RELATIVE path"
'bash' >>  # "linux's shell"

# Donde esta mi cedula(ID)?

cat Documents/newhome.txt
# Relative Path

cat /home/sysadmin/Documents/newhome.txt
# Absolute Path

---

ls -la # list directory content, ong list, [a]ll files incluing hidden files #! interview

comando -options argument # comentario explicacion #! interview
---

#? - Basic Navegation commands:

pwd # [p]rint [w]orking [d]irectory #! interview
ls -la # list current directory, [l]ong list, [a]ll files incluing hidden files #! interview
cd # [c]hange [d]irectory
.. # go back on the directory 
~ # Current user Home directory
. # Current directoy #!Cert
/ # Root Directory
/etc/ # most configuration files #!interview
/var/log/ # most log files and directories #! read and write access needed if on other FileSystem?
<TAB><TAB> # shows options for that command
; # use it to send a command after another
\  # you can use this if there is a long command the line will be cut #! CERT
su root # [s]witch [u]ser to "root"
sudo <command> # "[s]uper [u]ser do" excecutes command with admin rights


| grep "search_pattern" # find Regular expressions in the output of the previous command



#? - Getting help

man pwd # press "q" to [q]uit
info pwd
pwd --help # local help, summary
pwd -h # local help, summary
curl cheat.sh/pwd # online help #!best option


#? whereis command:
whereis cat # shows the path of the command "cat" and the path of the "man file"

#? which command:
which cat # shows the path of the command

#? type command:
type -a cat # type: shows [a]ll paths of the command 

#? apropos commad

apropos user # search something appropriate for "user" management 
apropos user | grep password # # search for user management, filter word: "password"

Esteban lo hizo sin notas


# Task 01: Create a new user account with a home directory, "bash" as the default shell, and tell me the user ID number (3 points)
sudo useradd -m esteban -s /bin/bash
cat /etc/passwd | grep esteban
# Task 02: Set a password for the new user to login as the new user (2 points)
sudo passwd esteban
su esteban
# Task 03: Display memory (RAM) utilization, redirect the output to a file in the new user home directory (1 point)
cd ; free -h > mymemory.txt
# Task 04: Go back to your previous user. Display disk usage. (1 points)
exit; df -h
# Task 05: Locate the file named "grub" across the entire system /// "/etc/default/grub" (2 points)
find / -iname "grub" 2>> erros.txt
# Task 06: Download and extract the contents of the tar archive located at https://download.splunk.com/products/splunk/releases/9.2.1/linux/splunk-9.2.1-78803f08aabb-Linux-x86_64.tgz (2 points)
wget https://download.splunk.com/products/splunk/releases/9.2.1/linux/splunk-9.2.1-78803f08aabb-Linux-x86_64.tgz
tar -xvf splunk-9.2.1-78803f08aabb-Linux-x86_64.tgz
# Task 07: Install the specified package "nginx" using the appropriate repository, start the associated service, and ensure it is enabled; then, uninstall the package (3 points)
sudo yum install nginx
systemctl status nginx
sudo systemctl start nginx
sudo yum remove nginx
 
# Task 08: Create a file with a ".sh" extension and demonstrate how to execute the script (1 point)
touch myscript.sh
sh myscript.sh
bash myscript.sh
./myscript.sh
 
