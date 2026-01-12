#! 107.1 Manage user and group accounts and related system files:
Users Mngt
* __Objectives:__
    - Manage user/group info in password/group databases.

#? command whoami:
whoami # Display currently logged username


#? command useradd:
useradd # "user addition" Create a new user #! interview
# Usage: useradd [options] LOGIN
useradd user1 # Creates a user: "Create a new user"
useradd -m user1 # Create the user's ho[m]e directory if it does not exist #!Cert
useradd -m user1 -s /bin/bash # sets the path to the user's login [s]hell


#? command passwd:
passwd # Passwd is a tool used to change a user's password. And general password mgmt #! interview, Cert
# Usage: passwd [OPTION...] <accountName>
passwd user1
sudo passwd root # change root password

#? command groupadd:
groupadd # "group addition" Add user groups to the system.
groupadd group_name # Create a new group:
groupadd mejenga

#? command groups:
groups user1 # Print group memberships for the current user:

#? userdel and groupdel
userdel -r user_name # "user delete" [r]emove the user’s home directory and mail spool. All files created by the user remain untouched #! CERT
groupdel group_name # "group delete" deletes the group

#? command usermod:
usermod # "user modification" modify a user account.
# Usage: usermod [options] username
usermod -aG sudo user_name # [a]dd user to "sudo" [G]roup in Debian/Ubuntu distros
usermod -aG wheel user_name # [a]dd user to "sudo" [G]roup in Red-Hat based distros

usermod -aG group_name user_name # [a]dd `user_name` to the `group_name` [G]roup.
usermod -rG group_name user_name # [r]emove `user_name` to the `group_name` [G]roup.

#? command su:
# Usage: su [options] [-] [<user> [<argument>...]]
#! ---ALERT--- when you Switch to other user by default you stay in the same directory(it doesnt change directories)
su user1 # Switch User to "user1" #! interview
su - username -c "command" # Execute a [c]ommand as another user: #!cert

"$" # signifies a standard user is logged into the shell #! cert
"#" # signifies root is logged into the shell #! cert



#? /etc/passwd file:

#! use alt+z to word wrap

/etc/passwd # contains details about system users #! cert
# | name | pass | user ID # | group # | comments | home directory | shell |
# | ---- | ---- | --------- | ------- | -------- | -------------- | ----- |
# |      |      |           |         |          |                |       |

man 5 passwd # check detail of passwd using man pages, man pages #5 give you details about config files

mark:x:1000:1000:,,,:/home/mark:/bin/bash
[--] - [--] [--] [-] [--------] [-------]
 |   |  |    |    |      |          |+---> 7. optional user command interpreter
 |   |  |    |    |      |+--------------> 6. user home directory
 |   |  |    |    +----------------------> 5. Comment field
 |   |  |    +---------------------------> 4. numerical group ID
 |   |  +--------------------------------> 3. numerical user ID. # Starts with 1000 #!CERT
 |   +-----------------------------------> 2. optional encrypted password
 +---------------------------------------> 1. login name

vipw -s  # [S]ecure Edit /etc/passwd file 
vigr -s  # [S]ecure Edit /etc/group file


#? /etc/group file:

/etc/group # contains details about the groups in the system #! Cert
# | group_name | password | GID | user_list |
# | ---------- | -------- | --- | --------- |
# |            |          |     |           |

man 5 group # check detail of group using man pages, man pages #5 give you details about config files

group_name:password:GID:user_list
[--------] [------] [-] [-------]
     |         |     |      |+-------> 4. a list of the usernames members of this group, separated by commas.
     |         |     +---------------> 3. the numeric group ID.
     |         +---------------------> 2. the (encrypted) group password. If empty, no password is needed.
     +-------------------------------> 1. the name of the group.

#? /etc/shadow file:
#! alt+z to word wrap

/etc/shadow # has info about user's password #! cert
# | user | hash | last pass date | wait time to change password | max time password | alert 7day before to change password | amount of time before blocking accout | expiration of temporary account |
# | ---- | ---- | -------------- | ---------------------------- | ----------------- | ------------------------------------ | ------------------------------------- | ------------------------------- |
# |      |      |                |                              |                   |                                      |                                       |                                 |

man 5 shadow # check detail of shadow using man pages, man pages #5 give you details about config files

mark:$6$.n.:17736:0:99999:7:::
[--] [----] [---] - [---] ----
|      |      |   |   |   |||+-----------> 9. Unused
|      |      |   |   |   ||+------------> 8. Expiration date, when the account was disabled "epoch date"
|      |      |   |   |   |+-------------> 7. Inactivity period, number of days before the user account is disabled
|      |      |   |   |   +--------------> 6. Warning period, number of days before
|      |      |   |   +------------------> 5. Maximum password age, number of days
|      |      |   +----------------------> 4. Minimum password age, number of days
|      |      +--------------------------> 3. Last password change (since January 1, 1970 "epoch date")
|      +---------------------------------> 2. Encrypted Password (only hashes are saved) #! Cert
+----------------------------------------> 1. Username


sudo usermod -e 30 user1 # Set a maximum [e]xpiredate password age of 30 days for `user1`.


/etc/skel/ # It is a [skel]eton(template) directory for new users #!CERT

#? getent command:

getent # "get entry" used to search on a databases: ahosts, aliases, gshadow, networks, rpc,ahostsv4, ethers, hosts, passwd, services
# Usage: getent [OPTION...] database [key ...]
getent passwd esteban # gets info about "esteban" in the "passwd" data-base
sudo getent shadow esteban


#? last command

last # View the last logged in users #!CERT (command output)