#? 103.1 Work on the command line 
#? - Objectives:
    #? 1. Use single shell commands and one line command sequences to perform basic tasks on the command line.
    #? 2. Use and modify the shell environment including defining, referencing and exporting environment variables.
    #? 3. Use and edit command history.


#                  LINUX ENVIROMENT
#           (Every time you turn the machine)                
# ┌─────────────────────────────────────────────────┐
# │  ┌───────┐   ┌─────┐    ┌───────┐    ┌───────┐  │
# │  │Current│   │OTHER│    │SCRIPT1│    │SCRIPT2│  │
# │  │ USER  │   │ USER│    │LOCAL  │    │LOCAL  │  │
# │  │ LOCAL │   │LOCAL│    │SHELL  │    │SHELL  │  │
# │  │ SHELL │   │SHELL│    └───────┘    └───────┘  │
# │  └───────┘   └─────┘                            │
# └─────────────────────────────────────────────────┘    


#?  Local variables

set # Shows "Local Variables": _They exist only where they're created_ (specific shell or script).
variable1='esteban' # creates variable named: "variable1" with the value: "esteban" inside on it #! CERT
echo $variable1 # shows the content fof the variable
unset variable1 # unset: remove variable


#?  Enviroment Variables

env # list "enviroment variables": Used for system-wide configuration
echo "this is me $USER" # echo: returns argument given
export DISTRO="UBUNTU" # export local variable to enviroment #! CERT
$PATH # PATH variable gives the directories to look up for commands #! CERT
$USER # shows the current user
$HOME # shows the current user home directory  #! CERT
$PWD # shows the current user working directory  #! CERT
$PS1 # this is the shell's prompt

#? The "bashrc" initiation file:

~/.bashrc # User initiation file. This script is ran every time the user logs in
nano ~/.bashrc # to permanently export a variable, per user at the bottom of this file, add the "export" command with your new directory:
```
export PATH=$PATH:/path/to/directory/
```
# Save and close the file. The changes to the PATH variable will be made once a new shell session is started. #! Splunk challenge

source ~/.bashrc # To apply the changes to the current session

~/.bash_logout # loads for logout shells
~/.profile # loads for login shells
/etc/profile.d # directory runs scripts in it every time the machine loads


#? The "environment" initiation file:

/etc/environment # permanently export a variable in Linux, globally.
source /etc/environment # To apply the changes system-wide

'' # Single Quotes: for plain text 
"" # Doble Quotes: similar to simple quotes but it accepts: '$', '`', '\' and '!' 
`` # Back Quotes: used to execute commands
longlist=`ls -l` # creates a variable with a command inside: "ls -l"
echo $longlist # runs "ls -l" 


#? history command
~/.bash_history # shows history in plain text

history # shows history, use up/down arrow to look at your history
history -c # [c]lear the history list by deleting all of the entries
history -w # [w]rite the current history to the history file