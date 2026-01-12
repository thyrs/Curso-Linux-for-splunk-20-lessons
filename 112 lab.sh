
#? Lab 1120 - vi

# 1. Redirect the contents of /var/log/dpkg.log to a file named "mylogs.txt" in your home directory. (/var/log/dnf.log for redhat users)
# 2. Open the file in vi, navigate to the end, move up 3 lines, and insert the following on a new line:
#    "My first name is [Your First Name]."
# 3. Save the file (:w) and exit vi (:q). Then, display the last 7 lines of the file in the terminal.
# 4. Reopen "mylogs.txt" in vi, navigate to the line containing "My first name is [Your First Name].",
# 5. Still in vi, replace every occurrence of the word "status" with your full name in uppercase ("DDEBUG"  for redhat users)
# 6. Display only the last 5 lines of the file with line numbers, 
#    then use grep to filter and show only lines containing your name in uppercase. #! SS

#? Lab 1121: Globbing Characters 

# move to the /etc/ directory
# list all files that starts with 's' and has a total of 7 characters, 
# list all files with a number in its name.
# Create a tarball in "~" from everything that ends with letter 'd' in /etc/
# list everything in /etc/ that starts with "s", "r" or "c" and ends with letter "y" #! SS


#? Lab 1122: Use cp and rm with globing characters
# Move to your home directory (~) and create a new folder
# Copy files from /etc/ that end with ".conf" into the new folder
# inside the folder, delete the ones that don't start with "w" or "x"
# List the contents of the directory #! SS


#? Lab 1123: find options with globing characters

# Find regular files (f) in "/usr" with ".x86" in the name.
# find files with 3 characters in "/usr" that start with the letter "i"
# Find "security" directories up to 3 levels deep. From root "/" #! SS

#? Lab 1124: use locate

# Create new directory and move into it
# Create a new file with your name_lastname, then try to locate it from your home directory "~". #! SS
# With locate: count results for "fstab" 


#? Lab 1125: Create an script that shows examples of 3 globbing characters (use the ones you struggle the most)
# for extra karma points try using vi now on. 

```
"select the globbing character to see examples:"
1) *
2) []
3) "" vs ''
```


#? Lab 1126 EXTRA optional 1020: Modifying User and Group Files Securely with vipw and vigr
# move to your Home Directory "~"
# Open `/etc/passwd` for secure editing.(Observe: `username:password:UID:GID:comment:home_directory:shell`.)Exit without changes 
# Open `/etc/group` for secure editing.(Observe: `group_name:password:GID:member_list`.)
# Add a new user `testuser2` and assign to `your_nameteam` group.
# Set a password for `testuser2`.
# Verify the new user and group membership. #! SS


#! Common Interview questions for: Vi, Globbing: *, ?, [], !, "", '', \ , find, locate
# using vi editor., how to edit and save a file
# what is the diference between find and locate?
# In vi how can you exit and save the changes made to a file? X2
    * How can you go to the last line of the file?
    * Search for the string ERROR
    * Quit a file without saving changes 3pts