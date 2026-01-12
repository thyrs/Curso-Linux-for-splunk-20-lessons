#? - 104.7 Find system files and place files in the correct location

#? __Objectives:__
    #? - Understand the correct locations of files under the FHS.
    #? - Find files and commands on a Linux system.
    #? - Know the location and purpose of important file and directories as defined in the FHS.
    
#? Globbing Characters:
# https://www.geeksforgeeks.org/file-globbing-linux/ 
#! Globbing a veces no permite usar mas de un "*" en la misma expression

cd /etc/ # run these commands in /etc/ for testing:

* # zero or more characters #! CERT
ls x* # shows every result that starts with 'x'
ls *x # shows every result that ends with 'x'
ls *x* # shows every result that has a 'x'

? # one character  #! CERT
ls ????? # shows any file with 5 characters

[] # ranges or lists
ls [x-z]* # shows files that start from with a letter 'x' to 'z'
ls *[1,7,3]* # shows files that have a number from the list on it

! # Deny list or range
ls *[!a-z] # show any files that dont end with letters from "a" to "z" (lowercase)

'' # Symbols taken as literal for all special characters #! CERT
ls 1??'*' # it may show "100*" 

"" # Allows terminal interpretation of special characters and variables
echo "$USER" # shows varible output: current user
echo '$USER' # shows: $USER, Symbols taken as literal

\  # \ = "the escape character" = Cancells next special characters funtion #! CERT


#? Exmples:

echo hi, my name is $USER and i want the \$10 coffee # shows: a variable and the dollar sign as literal
ls /etc/*[0-9]* # using a range, shows any file in /etc/with a number in its name, 
cp /etc/[a,e,i,o,u]* ~ # using a list, copies any file in /etc/ that starts with a vowel to the home, 
rm -r / *.txt  # deletes all .txt files in the root directory (be careful with this command)
mv /usr/share/??? /tmp/ # moves any 3 character file from /usr/share/ to /tmp/
touch file{1..10}.txt # Create files: file1.txt through file10.txt

man glob # read the manual about globbing



#? find command
find # search tool (default = Globbing) #! interview favorite
# Usage: find [path] {-options} pattern
find / -iname shadow # find in root "/", the whole machine, match is case [i]nsensitive, pattern: "shadow"
find /etc/ -name shadow # find in "/etc", match is case sensitive, pattern: "shadow"
find /path/to/search -type f -name "*12*" # find a [f]ile that has 12 in its name:
find /path/to/search -type f -name "???" # find a [f]ile with 3 characters:
find /path/to/search -type f -name "*5" # Find a [f]ile that ends with the number 5:
find / -name shadow 2> /dev/null # buscar en toda la maquina, redirect errors to "/dev/null"
find / -size +100M 2> /dev/null # all files with [size] +100M, redirect errors
find / -type d -name "security" -maxdepth 3 2> /dev/null # All results; [type]: [d]irectory, matching 'security', [m]ax depth in directories = 3, redirect errors


#? locate command:
sudo yum install plocate # install locate
locate # search tool #!(it uses a date base, it updates at 12mid-night every day),
# Usage: locate [OPTION]... [PATTERN]...
locate "keyword" # find file by name, quickly, in the DATABASE NOT DIRECTLY in the machine
locate -c "keyword" # [c]ounts amount of result with the keyword
locate /etc/"keyword" # searching on a path
locate */filename # Look for a file by its exact filename (a pattern containing no globbing characters is interpreted as `*pattern*`):

#? updatedb command:
sudo updatedb # update DB "DataBase" for the locate command, may take a lot of time





