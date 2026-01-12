
#? Lab 1020 - vi

# 1. Redirect the contents of /var/log/dpkg.log to a file named "mylogs.txt" in your home directory.
cp /var/log/dpkg.log ~/mylogs.txt

# 2. Open the file in vi, navigate to the end, move up 5 lines, and insert the following on a new line:
#    "My first name is [Your First Name]."
#    (Use 'G' to go to the end, '5k' to move up 5 lines, 'o' to open a new line below, then type the text.)

# 3. Save the file (:w) and exit vi (:q). Then, display the last 7 lines of the file in the terminal.
tail -7 ~/mylogs.txt

# 4. Reopen "mylogs.txt" in vi, navigate to the line containing "My first name is [Your First Name].",
#    move down 1 line, and insert: "I live in [Your City/Country]."
#    (Use '/my first name' to search, 'j' to move down, 'o' to open a new line, then type the text.)

# 5. Still in vi, replace every occurrence of the word "status" with your full name in uppercase (e.g., :%s/status/YOUR NAME/g).
#    Save the file (:w) and exit (:q).

# 6. Display only the last 5 lines of the file with line numbers, then use grep to filter and show only lines containing your name in uppercase.
cat -n ~/mylogs.txt | tail -5
grep -i "[YOUR UPPERCASE NAME]" ~/mylogs.txt



#? Lab 1020: Create an script that shows examples of 3 globbing characters (use the ones you struggle the most)
# for extra karma points try using vi now on. 

echo "select the globbing character to see examples:"

cat << 'EOF'
1) *
2) []
3) "" vs ''
EOF

read selection

if test $selection == "1"; then
echo "example of *"
fi

if test $selection == "2"; then
echo "ls /etc/*[0-9]* # using a range, shows any file in /etc/with a number in its name"
echo "cp /etc/[a,e,i,o,u]* ~ # using a list, copies any file in /etc/ that starts with a vowel to the home, "
fi

if test $selection == "3"; then
echo "example of \"\" vs ''"
echo "echo "$USER" # shows varible output: current user"
echo "$USER"
echo "echo '$USER' # shows: $USER"
echo '$USER'
fi

#? Lab 1021: Globbing Characters 

# move to the /etc/ directory
# list all files that starts with 's' and has a total of 7 characters, 
ls /etc/s?????? .
# list all files with a number in its name.
ls *[0-9]*
# Create a tarball in "~"" from everything that ends with letter 'd' in /etc/
tar -cf mytar.tar /etc/*d
tar -tf mytar.tar 
# list everything in /etc/ that starts with "s", "r" or "c" and ends with letter "y"
ls /etc/[s,r,c]*y

#? Lab 1022: Use cp and rm with globing characters

# Move to your home directory (~) and create a new folder
cd ~
mkdir mydir
# Copy files from /etc/ that end with .conf
cp /etc/*.conf ./mydir/
# Delete the ones that don't start with "w" or "x"
rm ./mydir/[!wx]*
# List the contents of the directory
ls mydir/



#? Lab 1023: find options with globing characters

# Find regular files (f) in "/usr" with ".x86" in the name.
find /usr -type f -name "*.x86*"
# find files with 3 characters in "/usr" that start with the letter "i":
find /usr -name "i??"
# Find "security" directories up to 3 levels deep. From root "/""
find / -type d -name "security*" -maxdepth 3 2>/dev/null

#? Lab 1024: use locate

# Create a new file with your name and lastname in "~", then try to locate it from your home directory "~"
touch /~/estebanrojas
locate estebanrojas
# With locate: count results for "fstab":
locate -c fstab


#? Lab EXTRA optional 1020: Modifying User and Group Files Securely with vipw and vigr
# move to your Home Directory "~"
# Open `/etc/passwd` for secure editing.(Observe: `username:password:UID:GID:comment:home_directory:shell`.)Exit without changes 
# Open `/etc/group` for secure editing.(Observe: `group_name:password:GID:member_list`.)
# Add a new user `testuser2` and assign to `your_nameteam` group.
# Set a password for `testuser2`.
# Verify the new user and group membership. #! SS