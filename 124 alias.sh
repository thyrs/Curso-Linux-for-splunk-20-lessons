

------------

#? Lab alias
18 feb 2023
# 1. create an alias that sorts the files by timestamp on any directory 
alias lt='ls -llt'
# 2. create a new hidden file and list it
touch .myhiddenfile
# 3. change the file name
mv .myhiddenfile .myhiddenfile2

#? Lab 2 alias-variable

# 1. crear un alias que me cambie de directorio a /tmp 
# 2. crear una variable que contenga el nombre de la distribucion que esta usando
# 3. hacer la variable anterior de ambiente y mostrar que asi sea

alias gotmp='cd /tmp'
gotmp
DISTRO=KALI-LINUX
echo $DISTRO
export DISTRO=KALI-LINUX
env | grep "keyword"

# 141 LAB alias

# Create an alias for each scenario:

# check all files in a provided directory and shows what type of files are there 
# find all block files in the system and have it display a stat for each 



#? 132 lab init files


# 1. create an alias that counts the files of your home directory and add it to a user initialization file
# 2. make the same but for all users the output should look like this:
"$USER you have xx files in your current directory"
# add a script with this:
# echo $USER you have `ls -a ~ | nl | tail -1 | cut -d. -f1` files in your current directory
# 3. create a logout script that sends a message to all connected users who logged out



#? 023 lab variables-alias



# 1. using 'env' find the variable LANG using 'grep'
# 2. create a variable that has your name, find it using 'set' and 'grep'
# 3. create an alias that shows the distribution information for your machine
# 4. using || and && create a series of commands that search for a file and returns an specific output if it exists or not


