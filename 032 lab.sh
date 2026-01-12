
#? Lab 0320: simple file mgmt
alt + z word wrap

# 0. - Navigate to your home directory
# 0. - If you don't have them, create the folders Downloads, Desktop, Documents 
# 1. - Enter the Downloads folder and create a .txt file named "textfile.txt" with your name as its content.
# 2. - Copy the file to the Desktop folder, then rename it to "newtextfile.txt".
# 3. - Add "good morning" to the document using nano.
# 4. - Create a folder inside Desktop/ named "myfolder" and move newtextfile.txt to that folder.
# 5. - Delete "textfile.txt" inside Downloads.
# 6. - Return to the home directory "~" and use cat on "newtextfile.txt". #! take SS
# 7. Send a screenshot of the last command.



#? Lab 0321: Creating and Managing Symbolic Links
# Learn how to create, identify, and manage symbolic (soft) links.

# Navigate to your home directory:
# Create a text file in the Documents folder(use your name and the date as content):
# Create a symbolic link to this file on the Desktop(name it "shortcutname.txt"): #? use absolute paths
# List files in the Desktop directory to see the link:
# Use `cat` to display the content of `shortcutname.txt`:
# Add more text to the original file(your lastnames):
# Verify that changes reflect in the symbolic link, Use `ls` and `cat`: #! take SS



#? Lab 0322: Creating and Managing Hard Links
# Learn how to create, identify, and manage hard links.

# Navigate to your home directory:
# Create another file in the Documents folder(use your full name initals (esteban rojas soto = ERS) as content):
# Create a hard link to this file on the Desktop(name it newhardfile.txt): #? use absolute paths
# Use `stat` command to check inode numbers of both files:
# Add more text to one of them (add the name of the place you live) (e.g., `newhardfile.txt`):
# Verify that changes reflect in both files by checking contents of both files using `cat` command. 
# Find all files with same inode number as `newhardfile.txt` (use inode number from previous step), use `ls`: #! take SS


#! Common Interview questions for: file management:** cp, mkdir, mv, rm, rmdir, touch, nano, cat. HARD/SOFT LINKS 
# how you can find the file type?
# what are the links in linux and its type?
# What is difference between hard and soft link?
# How to check number of hard links created for a file?
# What are the type of files in linux OS?
# which command do we use to create a file in linux?
# how to list hidden files?
# what are inode and process id?
# how to rename a file in linux?
# Explain hard links and what command is used to create them.  1pts x3

# Considering this information: 3pts x2
crw-rw-rw-. 1 root root      1,   8 Feb 19 00:11 random
drwxr-xr-x. 2 root root          60 Feb 19 00:11 raw
lrwxrwxrwx. 1 root root           4 Feb 19 00:11 rtc -> rtc0

- What happens if the rtc0 is deleted?
- How many different type of files are in the output above?
- How many users can write into the file ‘random’?
# What are hard and soft links? What is the difference? 2pts
