
#? Lab 1421
# Send a `sleep 100` command to the background, then bring it back to the foreground and stop it with Ctrl+C. #!SS
# Make sure you fully understand the process of sending a job to the background and bringing it back to the foreground.
```
sleep 100
Ctrl+Z  # Stop it and send it to the background
bg      # Resume the most recently suspended job and run it in the background
fg      # Bring the most recently suspended or running background job to the foreground
Ctrl+C  # Cancel the process
```

#? Lab 1422
# Run the command `cat /dev/zero > /dev/null &`, then check the CPU consumption on the machine. #!SS
# Search for the process and make sure you kill it. 
```
cat /dev/zero > /dev/null &
top
```

#? Lab 1423
# Open two terminals. 
# Create and monitor the contents of a directory as you add more files to it from the second terminal. #!SS
# Do the same with a text file using the `tail` command.
```
mkdir newdir ; watch -d ls -l newdir
# In the other terminal
touch newdir/file1 newdir/file2 newdir/file3
```

#? Lab 1424
# Show the CPU architecture and the number of CPUs available.
lscpu | grep -e "Architecture" -e "CPU(s)"
# Show how long the machine has been running.
uptime

#? Lab 1425
# Run three `sleep 100` commands and send them all to the background. 
# List them with their PIDs, then send a kill signal to all of them at once.
```
sleep 100 &
sleep 100 &
sleep 100 &
pgrep sleep
killall sleep
```

#? Lab 1426
# Create a file named after a chocolate brand and run `tail -f /path/to/file` on it, sending it to the background. 
# Send a signal to "reload" the process, then a signal to pause/suspend it, and finally a signal to resume it.
```
tail -f script.sh &
kill -1 424   # Reload the process (SIGHUP)
tail -f script.sh &
kill -19 430  # Pause/suspend the process (SIGSTOP)
kill -18 430  # Resume the process (SIGCONT)
```

#? Lab 1427 - Extra/Optional Script
# Create a script that lets you select and view the description of one of the six most common kill signals.

```
Select the number of the kill signal you want to know more about:
1. SIGTERM
2. SIGKILL
3. SIGINT
4. SIGHUP
5. SIGSTOP
6. SIGCONT  

Please type your selection: 2

You selected number 2: SIGKILL
This kill signal: Forcefully kills the process.
```

#? Lab 1428 - Extra/Optional
# Run three `sleep 100` commands and send them to the background. 
# Send a SIGTERM signal to the first one using the `kill` command, 
# a SIGKILL to the second, 
# and a SIGINT to the third. 
# Use the `jobs` command to verify.

```
kill -TERM 216  # Graceful termination (default): The process cleans up before exiting
kill -KILL 217  # Forcefully kills the process
kill -INT  218  # Interrupts the process (like Ctrl+C in a terminal)
jobs            # Verify
```

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