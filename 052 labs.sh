
#? Lab 0520 : Using Pipes 
# Navigate to your home directory
# 1. Create a directory for this lab:
# 2. List all files in `/etc` and pipe the output to `grep` to filter for files containing the word "conf"
# 3. Count the number of files in `/etc` by piping the output of `ls` to `wc -l`
# 4. Sort the output of `cat /etc/passwd` alphabetically by piping it to `sort` #!SS


#? Lab 0521 : Combining Pipes, Redirects, and `tee`
# Navigate to your home directory
# 1. Create a directory for this lab:
# 2. List all files in `/etc`, filter for those containing "conf", and save the output to `conf_files.txt` while also displaying it:
# 3. Count the number of lines in `conf_files.txt` and save the count to `count.txt`:
# 4. Show the contents of both files: #!SS


#? Lab 0522: Piping with /etc/passwd for User Analysis
# Navigate to your home directory
# 1. Create a directory for this lab:
# 2. Extract usernames from /etc/passwd (first column) and sort them alphabetically:  
# 3. Filter for users starting with you intitial ("e" for esteban) #!SS

#? Lab 0523: Piping with /etc/shells 
# Navigate to your home directory
# List all available shells in /etc/shells and filter for "bash"-related shells #!SS

#? Lab 0524: Filter binaries names
# Navigate to your home directory
# Look for binaries in /bin/ that include a number in its name, show just the first 5 of them #!SS
# Look for binaries in /bin/ that only have 3 letter in its name, show just the last 5 of them #!SS


#? Lab 0525: sed command
# Navigate to your home directory
# show the output of the /etc/shells file and redirect its output to a file named with your initials: ERS.txt = Esteban Rojas Soto
# replace the word "bash" with your name using the "sed command"
# show the result using "cat" #!SS

#! Common Interview questions for: regular expressions Command Line Pipes:** grep, egrep, fgrep, sed
# show all files starting with c or m?
