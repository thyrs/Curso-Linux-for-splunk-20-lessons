

#? Lab 1421
# Send a `sleep 100` command to the background, then bring it back to the foreground and stop it with Ctrl+C. #!SS
# Make sure you fully understand the process of sending a job to the background and bringing it back to the foreground.

#? Lab 1422
# Run the command `cat /dev/zero > /dev/null &`, then check the CPU consumption on the machine. #!SS
# Search for the process and make sure you kill it. 

#? Lab 1423
# Open two terminals. 
# Create and monitor the contents of a directory as you add more files to it from the second terminal. #!SS
# Do the same with a text file using the `tail` command.

#? Lab 1424
# Show the CPU architecture and the number of CPUs available. #!SS
# Show how long the machine has been running.

#? Lab 1425
# Run three `sleep 100` commands and send them all to the background. 
# List them with their PIDs, then send a kill signal to all of them at once. #!SS

#? Lab 1426
# Create a file named after a chocolate brand and run `tail -f /path/to/file` on it, sending it to the background. 
# Send a signal to "reload" the process, then a signal to pause/suspend it, and finally a signal to resume it. #!SS

#? Lab 1427 - Extra/Optional Script
# Create a script that lets you select and view the description of the six most common kill signals. (use most use IF statement)


#? Lab 1428 - Extra/Optional
# Run three `sleep 100` commands and send them to the background. 
# Send a SIGTERM signal to the first one using the `kill` command, 
# a SIGKILL to the second, 
# and a SIGINT to the third. 
# Use the `jobs` command to verify.


#! Common Interview Questions for Processes
# These cover commands like `ps`, `top`, `bg`, `sleep`, `fg`, `jobs`, `kill`, `nohup`, `free`, `uptime`, `pgrep`, `pkill`, `killall`, and `watch`.

# What is swap space?
# What are inodes and process IDs?
# How do you check the status of a process?
# How do you terminate or stop a running process?
# What's the difference between `kill` and `kill -9`?
# Which command shows information about running processes? (1 pt)
# How can you list the different signals that can be sent to a process? What are the most commonly used signals, and what's the difference between them?
# What does the following command do? (1 pt)  
  `ps aux | less`
# How can you check all running processes for a specific user? (1 pt x2)
# Which command shows information about running processes for the user "pato"? (1 pt)
# What happens if you run this command? (1 pt x2)  
  `kill -15 32345`
# What happens when you send signal 9 to a process ID? (1 pt x2)
# What is process hierarchy? How can you check the process hierarchy on your Linux machine? (2 pts)