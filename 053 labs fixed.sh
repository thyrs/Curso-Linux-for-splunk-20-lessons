
#? Lab 0530 : Using Pipes 
# 1. Create a directory for this lab:
# 2. List all files in `/etc` and pipe the output to `grep` to filter for files containing the word "conf":
ls /etc/ | grep "conf"
# 3. Count the number of files in `/etc` by piping the output of `ls` to `wc -l`:
ls /etc/ | wc -l
# 4. Sort the output of `cat /etc/passwd` alphabetically by piping it to `sort`:
cat /etc/passwd | sort

#? Lab 0531 : Combining Pipes, Redirects, and `tee`
# 1. Create a directory for this lab:
# 2. List all files in `/etc`, filter for those containing "conf", and save the output to `conf_files.txt` while also displaying it:
ls /etc/ | grep "conf" > conf_files.txt
# 3. Count the number of lines in `conf_files.txt` and save the count to `count.txt`:
cat conf_files.txt | wc -l > count.txt
# 4. View the contents of both files:
cat conf_files.txt count.txt


#? Lab 0532: Piping with /etc/passwd for User Analysis
# 1. Create a directory for this lab:
# 2. Extract usernames from /etc/passwd and sort them alphabetically:  
cat /etc/passwd | cut -d: -f1 | sort
# 3. Filter for users starting with you intitial ("e" for esteban) #!SS
cat /etc/passwd | cut -d: -f1 | grep "^e" 


#? Lab 0533: Piping with /etc/shells for Shell Management
# Navigate to your home directory
# List all available shells in /etc/shells and filter for "bash"-related shells #!SS
cat /etc/shells | grep "bash" 


#? Lab 0534: filter binaries with number and number of letters
# Navigate to your home directory
# Look for binaries in /bin/ that include a number in its name, show just the first 5 of them #!SS
ls /bin/ | grep '[1-9]' | head 5
# Look for binaries in /bin/ that only have 3 letter in its name, show just the last 5 of them #!SS
ls /bin/ | grep "^...$" | tail -n 5

#? Lab 0535: sed command
# show the output of the /etc/shells file and redirect its output to a file named with your initials: ERS.txt = Esteban Rojas Soto
cat /etc/shells > ERS.txt
# replace the word "bash" with your name using the "sed command"
sed -i 's/bash/ESTEBAN/' ERS.txt
# show the result using "cat" #!SS
cat ERS.txt