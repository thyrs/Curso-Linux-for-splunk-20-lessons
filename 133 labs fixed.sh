
#? Lab 1321 - changing onwer and permissions with chmod and chown
# create a file with the name of a car brand and make it match this permissions:
# only execute for the user, full permisions for the group, none for other
# also change the onwer group to "root"
# verify with: ls -l /path/to/file #!SS

#? Lab 1322 - changing permissions with octal values
# create a file with the name of a drink brand and make it match this permissions:
rwx----wx
# use octal values, and verify with: ls -l /path/to/file #!SS


#? Lab 1323 - Script 
# 1. Make an script that ask your for the absolute path of a file and tells u who is the owner
# HINT: use the commands: ls -l, cut -d' ' -f4...
```
bash onwer.sh
type the absolute path of a file: /path/to/file
the onwer of this file is:
rojases
```

#? LAB script EXTRA-OPTIONAL

# Make an script that give u a detail about a file permissions

bash permisisons
```
read -p "type the aboslute path of the file" MYFILE

echo "this are the $MYFILE permisisons:"

echo "the onwner of this file is:"
ls -l $MYFILE | cut -d' '  -f3

echo "the onwner gro of this file is:"
ls -l $MYFILE | cut -d' '  -f4


echo "this are the permissions for the onwer:"

echo "READ permissions:"
test `ls -l $MYFILE | cut -d' '  -f1 | cut -c2` == "r" && echo "it has" || echo "it doesnt have"

echo "WRITE permissions:"
test `ls -l $MYFILE | cut -d' '  -f1 | cut -c3` == "w" && echo "it has" || echo "it doesnt have"

echo "EXECUTE permissions:"
test `ls -l $MYFILE | cut -d' '  -f1 | cut -c4 == "x" && echo "it has" || echo "it doesnt have"
```

#! Common Interview questions for: Permisions: chmod, umask, chown, chgrp
# What is file persission in linux?
# what are some things that can stop you from creating a file?
# how to check a file permition?
# what are different types of permissions for a file in linux?
# which permission allow a user to run an executable file(script)
# Consider this output: 1pts X3
```
cat /etc/newfile
cat: /etc/newfile: Permission denied
```
* What is the problem and how can you fix it?
# - Considering this information: 2pts x2
drwxr-xr-x.  2 root root       24 Dec 13  2018 UPower
* Which users can cd into the directory UPower?
* Which users can ls the UPower directory?
* Which users can create new files inside the directory UPower?
# - If a file has permissions set to 763 which users can execute this file? 1pts x3
# - How can I check the permissions of all the files under /etc/? Which command would you use? 1pts x2
# - What does these permissions mean:
   - rw- rw- r-x
* Who can execute this file? 1pts
# - What is umask? 1pts