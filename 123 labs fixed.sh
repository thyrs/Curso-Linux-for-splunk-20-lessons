

#? Lab 1221 - export variables

# Create a variable named "MYNAME" and make it environment. Proof it is now an environment variable.

MYNAME="ESTEBANROJAS"
export MYNAME="ESTEBANROJAS"
env | grep MYNAME

#? Lab 1222 - overwrite the variable $PS1

# Display the content of the variable PS1, redirect the output to a file in "~" that is called "mylinuxprompt.txt"
echo $PS1 > mylinuxprompt.txt
# Add a new "PS1" variable at the end of ~/.bashrc. Use the current PS1 variable and at the end add a funny emoji face (https://emojidb.org/)
nano ~/.bashrc
```
export PS1=$PS1:XD
```


#? Lab 1223 - modify .bashrc intiation file

# Add a welcome message to your shell you get in, use a ASCII Art (https://www.asciiart.eu/) for extra fun
# EXTRA-OPTIONAL: prove your skill and make the same welcome message to all users (you may need a script to do it)
```
for i in $(ls /home/); do 
echo "echo greetings, the admin of this machine salute you respecfully" >> /home/$i/.bashrc; done
```

#? Lab 1224 - the PATH variable

# 0 Backup your current PATH variable to a file in ~/backups/ (create the dir if needed): mkdir -p ~/backups && echo $PATH > ~/backups/original_path.txt.

# 1. Create a directory in your /usr/bin and call it "mycommands", carefully, add it to the PATH variable, then display the PATH variable to see if the change was successfull.
sudo mkdir /usr/bin/mycommands
export PATH=$PATH:/usr/bin/mycommands
env | grep PATH

# 2. Create 2 scripts that show small drawings of ASCII Art (https://www.asciiart.eu/), move them to /usr/bin/mycommands
sudo nano oso ; chmod +x oso ; mv oso /usr/bin/mycommands
```
cat << 'EOF'
 __         __  
/  \.-"""-./  \  
\    -   -    /  
 |   o   o   |  
 \  .-'''-.  /  
  '-\__Y__/-'  
     `---`  
EOF
```
sudo nano mickey ; chmod +x mickey ; mv mickey /usr/bin/mycommands
sudo nano casita ; chmod +x casita ; mv casita /usr/bin/mycommands

# 3. Run the 3 scripts like a regular command
oso ; mickey ; casita


#? Lab 1225 optional - the ~/.bash_logout and ~/.profile files

# Create ~/scripts/greet.sh: A script that checks the hour (date +%H), and gives a good bye message: "Good morning ☕" (before 12), "Good afternoon 🌤️" (12-18), or "Good evening 🌙" (after). (you can copy from previous labs)
# Make it executable: chmod +x ~/scripts/greet.sh.
# Add to ~/.bash_logout(loads for logout shells) and ~/.profile (loads for login shells): [[ -f ~/scripts/greet.sh ]] && ~/scripts/greet.sh.
# Test: Log out/in (or source ~/.profile), 
# You can change your system clock (sudo date -s "18:00:00") and relogin to see it adapt.
vi ~/greet.sh ; chmod +x ~/greet.sh
```
#!/bin/bash

user_time=`date +%H`

if  test $user_time -gt 0 && test $user_time -lt 6 ; then
    echo "es de madrugada vaya duerma" 
    echo "es de madrugada vaya duerma" >> newfile.txt
elif test $user_time -gt 6 && test $user_time -lt 12 ; then
    echo "buenos dias" 
    echo "buenos dias" >> newfile.txt
elif test $user_time -gt 12 && test $user_time -lt 18 ; then
    echo "Buenas tardes" 
    echo "Buenas tardes" >> newfile.txt
else 
    echo "buenas noches vaya duerma" 
    echo "buenas noches vaya duerma" >> newfile.txt
fi
```

vi ~/.bash_logout
```
[[ -f ~/greet.sh ]] && ~/greet.sh
```

vi ~/.profile 
```
[[ -f ~/greet.sh ]] && ~/greet.sh
```



#? Lab 1226 optional - the /etc/profile.d directory

# As root (or via sudo)
# Also create a script "myvariables" the set some personal variables like $MYNAME, $MYPLACE or $MYCOLOR
```
export MYNAME="ESTEBAN"
export MYPLAC="ALAJUELA"
export MYCOLOR="GREEN"
```
# Source it globally: It auto-loads on login for all users.
# Prove for all users: Switch to another user (su - otheruser)
# echo $MYNAME. Back to your user — still set?


#! Common Interview questions for: Variables: $USER, $PATH, env, export, set, unset, $HOME, .bashrc
# how to see the recenlly used comands?

