
#? Lab 1321 - Changing Owner and Permissions with chmod and chown
# Create a file with the name of a car brand and make it match these permissions:
# Only execute for the user, full permissions for the group, none for others
# Also change the owner group to "root"
# Verify with: ls -l /path/to/file #!SS

#? Lab 1322 - Changing Permissions with Octal Values
# Create a file with the name of a drink brand and make it match these permissions:
# rwx----wx
# Use octal values, and verify with: ls -l /path/to/file #!SS

#? Lab 1323 - Script
# 1. Make a script that asks you for the absolute path of a file and tells you who the owner is. 
# HINT: Use the commands: ls -l, cut -d' ' -f4...
# Run it with the "/etc/shadow/" file
```
bash owner.sh
type the absolute path of a file: /etc/shadow/
the owner of this file is:
root
```

#? #? Lab 1324 - Extra - Optional

# 1. Create a directory with special sticky bit permissions #!SS
# 2. Using "find" command, find all files that have the special setuid permission in the system #!SS

#? Lab Script Extra - Optional
# Make a script that gives you details about a file's permissions
```
bash permissions.sh
type the absolute path of the file: /path/to/file

here are the "/path/to/file" permissions:

here are the permissions for the USER/owner:
READ permissions:
"it has"
WRITE permissions:
"it doesnt have"
EXECUTE permissions:
"it has"
```

#? Common Interview Questions for: Permissions: chmod, umask, chown, chgrp
# What are file permissions in Linux?
# What are some things that can stop you from creating a file?
# How do you check a file's permissions?
# What are the different types of permissions for a file in Linux?
# Which permission allows a user to run an executable file (script)?
# Consider this output: 1pts x3
cat /etc/newfile
cat: /etc/newfile: Permission denied
# What is the problem and how can you fix it?
# Considering this information: 2pts x2
drwxr-xr-x.  2 root root       24 Dec 13  2018 UPower
# Which users can cd into the directory UPower?
# Which users can ls the UPower directory?
# Which users can create new files inside the directory UPower?
# If a file has permissions set to 763, which users can execute this file? 1pts x3
# How can I check the permissions of all the files under /etc/? Which command would you use? 1pts x2
# What do these permissions mean:
#    - rw- rw- r-x
# Who can execute this file? 1pts
# What is umask? 1pts
