
#? Lab 0621: Creating and Managing a User Account
# move to your Home Directory "~"
# Create a new user named `your_name1` with a home directory and default shell `/bin/bash`.

# Set a password for `your_name1`. Enter a password (e.g., `password123`).

# Verify the user’s entry in `/etc/passwd` with the command getent. (Output: `your_name1:x:1001:1001::/home/your_name1:/bin/bash`.)

# Verify the user’s password entry in `/etc/shadow` (requires root).

# Check the user’s home directory exists. #!SS


#? Lab 0622: Creating and Managing Groups
# move to your Home Directory "~"
# Create a new group named `your_nameteam`.
# Add `your_name1` to the `your_nameteam` group.
# Verify `your_name1`’s group memberships. (Output includes `your_name1` and `your_nameteam` (and possibly others).
# Check the group entry in `/etc/group`. (Output: `your_nameteam:x:1002:your_name1`.) #!SS


#? Lab 0623: Switching Users and Executing Commands
# move to your Home Directory "~"
# Switch to `your_name1` without changing the current directory.
# Verify the current user and directory.
# Exit back to the original user.
# Switch to `your_name1` with their environment.
# Verify the current directory is the user’s home directory. (Output: `/home/your_name1`.), exit back to the previous user
# Execute a command as `your_name1`.(create a file with the date all in CAPITAL LETTERS) #!SS
# Verify the file was created(use "ls -l").  #!SS


#? Lab 0624: Exploring `/etc/shadow` and Password Management
# move to your Home Directory "~"
# View the `/etc/shadow` entry for `your_name1` (requires root). Observe: `username:encrypted_password:last_change:min_days:max_days:warning_days:inactive_days:expire_date:unused`. #!SS
# Change the password for `your_name1`. (Enter a new password (e.g., `newpass123`).)
# Re-check the `/etc/shadow` entry. (Note the updated “last password change” date.)
# Set a maximum password age of 30 days for `your_name1`.
# Verify the change in `/etc/shadow`. #!SS


## Cleanup (Optional) Remove users and groups:

#? Lab 0625:
# Complete the tables in Markdown file: "060 Users Mngt_tables" with your "username", your "sudo" group, and your "username" for the /etc/shadow flie. #! SS



#! Common Interview questions for: Users Mngt:** useradd, passwd, groupadd, groups, usermod, su, /etc/passwd, /etc/shadow, getent
# how to check the current user in the terminal
# Can you please explain files of /etc/passwd?