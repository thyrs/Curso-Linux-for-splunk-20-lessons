#! Day 04 PERMISSIONS 


#! 104.5 Manage file permissions and ownership :

* ____Objectives:____
    - Manage access permissions on regular and special files as well as directories.


#* Important files terms and utilities:

| letter | meaning | # value | Directory | file     | 
| ------ | ------- | ------- | --------- | -------- |
| r      | read    | 4       | ls        | cat, cp  |
| w      | write   | 2       | rm, touch | nano, vi |
| x      | execute | 1       | cd        | sh, ./   |


#? ls -l command:
ls -l # shows detailed information about files and directories, including permissions #! CERT

| file | user | group | other | links | onwer | group | size | modification | name      |
| ---- | ---- | ----- | ----- | ----- | ----- | ----- | ---- | ------------ | --------- |
| -    | rwx  | rwx   | rwx   | 1     | thyrs | thyrs | 156  | dec 3 10:57  | classmate |
|      |      |       |       |       |       |       |      |              |           |


#? chmod command:

chmod # changes permissions on a file #! CERT, interview favorite
# Usage: chmod [OPTION]... FILE...
chmod +x script.sh # adds execution permissions to "script.sh"
chmod u+rwx,g-rwx,o+w path/to/file_or_directory # all permissions for [u]ser, nothing for [g]roup and all for [o]ther

r=4
w=2
x=1

chmod 664 filename
# read and write permissions on user
# read and write permissions on group
# read permissions on others

chmod 707 path/to/file_or_directory
# all permissions for owner, nothing for group and all for other


#? chown command:

chown # Change the owner and/or group, only one user and one group is allow per file/dir #!CERT
# Usage: chown [OPTION]... [OWNER][:[GROUP]] FILE...
chown user /path/to/file_or_directory # Change the owner user of a file/directory
chown user:group /path/to/file_or_directory # changes both: user and group
chown :group /path/to/file_or_directory # changes group only
chown user:same_group /path/to/file_or_directory # changes user only
sudo chown -R esteban:esteban /opt/splunkforwarder/ # change the owner of a folder [R]ecursive 


#? Chgrp command:

chgrp # Change group ownership of files and directories.
chgrp group /path/to/file_or_directory # Change the owner group of a file/directory:
chgrp -R group /path/to/directory # [R]ecursively = change the owner group of a directory and its contents:




#! SPECIAL PERMISSIONS:

| special PERMISSIONS | # value | meaning                                                        |
| ------------------- | ------- | -------------------------------------------------------------- |
| suid                | 4       | execute files as root(or file owner)                           |
| setgid              | 2       | execute as onwer group, dir: inherites group owner             |
| Sticky Bit          | 1       | cannt delete files if your are not the onwer of the directory  |
|                     |         |                                                                |

#? suid:
# For files only: execute files as root(or file owner)
rwx --- ---
rws --- ---  # with "s" user has execute rights as root
rwS --- ---  # with "S" suid is but user doesnt have execute rights 
chmod u+s /path/to/file
chmod 4644 /path/to/file # (4 = SUID, 644 = rw-r--r--, no 'x' for owner).

/usr/bin/passwd # this command (changes your password, but needs root to update /etc/shadow).

#! it is posible to apply it to directory but it doesnt affect (cert question)

#? setgid:
# for directories and files, on files execute as onwer group, dir: inherites group owner

--- rwx --- 
--- rws --- # dir has execute rights as root
--- rwS --- # group doesnt have execute rights
chmod g+s /path/to/dir
chmod 2755 /path/to/file-or-dir (2 = SGID, 755 = regular).

/usr/bin/plocate # this command has Access to Restricted Database, it needs group rights to read it.


#? sticky bit:
# Directories only: you cannt delete files if your are not the onwer

--- --- rwx
--- --- rwt # dir has execute rights as root
--- --- rwT # dir doesnt have execute rights
chmod o+t /path/to/dir
chmod 1777 /path/to/dir (1 = Sticky, 777 = fully writable).

/tmp # the temporal directory has sticky bit: drwxrwxrwt  #!CERT




#? umask command:
#https://www.computernetworkingnotes.com/linux-tutorials/how-to-change-default-umask-permission-in-linux.html


umask #! sets default rights and permissions to __REMOVE__ !!
umask 0022 # default 

# Remember, the standard format means 4=read, 2=write, and 1=execute.
# However, the umask uses the same, but is inverted, 
# so a umask of '077' would be '700', and correctly lowers to 600 when it's just a file.

#! 2 things u need to know about it about umask:
# 1. It sets default rights and permissions to __REMOVE__ !!
# 2. Files never get execute permissions by default !!! (security)

umask 0022 # default umask

rwx r-x r-x # Directory default permissions
rw- r-- r-- # File default permissions

umask 0777 # set umask to: "0777" (default = 0022) #! files never set execute permissions by default !!!
~/.bashrc # add your custom umask at the end of this file to save it
