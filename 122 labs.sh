

#? Lab 1221 - export variables

# 1. Create a variable named "MYNAME" and make it environment. Proof it is now an environment variable. #!SS

#? Lab 1222 - overwrite the variable $PS1

# 1. Display the content of the variable PS1, redirect the output to a file in "~" that is called "mylinuxprompt.txt"
# 2. Add a new "PS1" variable at the end of ~/.bashrc. Use the current PS1 variable and at the end add a funny emoji face (https://emojidb.org/)#!SS

#? Lab 1223 - modify .bashrc intiation file

# 1. Add a welcome message to your shell you get in, use a ASCII Art (https://www.asciiart.eu/) for extra fun #!SS
# EXTRA-OPTIONAL: prove your skill and make the same welcome message to all users (you may need a script to do it)


#? Lab 1224 - the PATH variable

# 0 Backup your current PATH variable to a file in ~/backups/ (create the dir if needed): mkdir -p ~/backups && echo $PATH > ~/backups/original_path.txt.
# 1. Create a directory in your /usr/bin and call it "mycommands", carefully, add it to the PATH variable, then display the PATH variable to see if the change was successfull.
# 2. Create 2 scripts that show small drawings of ASCII Art (https://www.asciiart.eu/), move them to /usr/bin/mycommands
# 3. Run the 2 scripts like a regular command #!SS

#? Lab 1225 optional - the ~/.bash_logout and ~/.profile files

# 1. Create ~/scripts/greet.sh: A script that checks the hour `date +%H`, and gives a good bye message: "Good morning ☕" (before 12), "Good afternoon 🌤️" (12-18), or "Good evening 🌙" (after). (you can copy from previous labs)
# 2. Make it executable: chmod +x ~/scripts/greet.sh.
# 3. Add to ~/.bash_logout(loads for logout shells) and ~/.profile (loads for login shells): [[ -f ~/scripts/greet.sh ]] && ~/scripts/greet.sh. 
# 4. Test: Log out/in (or source ~/.profile), #!SS
# 5. You can change your system clock (sudo date -s "18:00:00") and relogin to see it adapt.


#? Lab 1226 optional - the /etc/profile.d directory

# 1. As root (or via sudo)
# 2. Also create a script "myvariables" the set some personal variables like $MYNAME, $MYPLACE or $MYCOLOR
```
export MYNAME="ESTEBAN"
export MYPLACE="ALAJUELA"
export MYCOLOR="GREEN"
```
# 3. Move it into /etc/profile.d and source the script "myvariables" globally: It auto-loads on login for all users.
# 4. Prove for some users: Switch to another user
su - otheruser # it is important you use the "-" with the su command, it simulates a full login shell
echo $MYNAME # Back to your user — still set? #!SS



#! Common Interview questions for: Variables: $USER, $PATH, env, export, set, unset, $HOME, .bashrc
# how to see the recenlly used comands?

