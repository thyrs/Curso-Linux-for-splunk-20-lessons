#? Lab 0621: Creating and Managing a User Account
# Create a new user named `your_name1` with a home directory and default shell `/bin/bash`.
sudo useradd -m -s /bin/bash your_name1
# Set a password for `your_name1`. Enter a password (e.g., `password123`).
sudo passwd your_name1
# Verify the user’s entry in `/etc/passwd`. (Output: `your_name1:x:1001:1001::/home/your_name1:/bin/bash`.)
getent passwd your_name1
# Verify the user’s password entry in `/etc/shadow` (requires root).
sudo getent shadow your_name1
# Check the user’s home directory exists.
ls -ld /home/your_name1


#? Lab 0622: Creating and Managing Groups


# Create a new group named `your_nameteam`.
sudo groupadd your_nameteam
# Add `your_name1` to the `your_nameteam` group.
sudo usermod -aG your_nameteam your_name1
# Verify `your_name1`’s group memberships. (Output includes `your_name1` and `your_nameteam` (and possibly others).
groups your_name1
# Check the group entry in `/etc/group`. (Output: `your_nameteam:x:1002:your_name1`.)
getent group your_nameteam




##? Lab 3: Switching Users and Executing Commands


# Switch to `your_name1` without changing the current directory.
su your_name1
# Verify the current user and directory.
whoami
pwd
# Exit back to the original user.
exit
# Switch to `your_name1` with their environment.
su - your_name1
# Verify the current directory is the user’s home directory. (Output: `/home/your_name1`.)
pwd
# Execute a command as `your_name1`.
su - your_name1 -c "echo 'Hello from your_name1' > /home/your_name1/testfile.txt"
# Verify the file was created.
ls -l /home/your_name1/testfile.txt




#? Lab 0624: Exploring `/etc/shadow` and Password Management

# View the `/etc/shadow` entry for `your_name1` (requires root). Observe: `username:encrypted_password:last_change:min_days:max_days:warning_days:inactive_days:expire_date:unused`.
sudo getent shadow your_name1
# Change the password for `your_name1`. (Enter a new password (e.g., `newpass123`).)
sudo passwd your_name1
# Re-check the `/etc/shadow` entry. (Note the updated “last password change” date.)
sudo getent shadow your_name1
# Set a maximum password age of 30 days for `your_name1`.
sudo usermod -e 30 your_name1
# Verify the change in `/etc/shadow`.
sudo getent shadow your_name1


## Cleanup (Optional)

Remove users and groups:
```
sudo userdel -r your_name1 # deletes the user’s home directory and mail spool.
sudo userdel -r testuser2
sudo groupdel your_nameteam
```

#? Lab 0625:
# Complete the tables in Markdown file: "060 Users Mngt_tables" with your "username", your "sudo" group, and your "username" for the /etc/shadow flie. #! SS



#? Extra optional labs:


# Create a dir in /etc/skel (use your favorite fruit as the name)
sudo mkdir /etc/skel/mamon_chino
# Edit the ~/.bashrc file so you see a text when login add something like this at the end of the file: echo "have a happy and productive day!!"
echo "echo have a nice day" >> ~/.bashrc
# Create a new user account 
sudo useradd -m myesteban -s /bin/bash
# list the content of the new user's home directory #! SS
sudo ls /home/myesteban/






#? Lab 0625: Modifying User and Group Files Securely (extra, do it only if you already know how to use vi text editor)
# move to your Home Directory "~"
cd ~
# Open `/etc/passwd` for secure editing.(Observe: `username:password:UID:GID:comment:home_directory:shell`.)Exit without changes 
# Open `/etc/group` for secure editing.(Observe: `group_name:password:GID:member_list`.)
# Add a new user `testuser2` and assign to `your_nameteam` group.
# Set a password for `testuser2`.
# Verify the new user and group membership. #! SS