#! Day 05 PROCCESS & PACKAGE MANAGEMENT -->

#! 103.5 Create, monitor and kill processes:
* __Objectives:
    - Run jobs in the foreground and background.
    - Signal a program to continue running after logout.
    - Monitor active processes.
    - Select and sort processes for display.
    - Send signals to processes.

#* Important files terms and utilities:


lscpu # display information about the CPU architecture #!Interview

#? ps command:

ps aux # shows processes: [a]ll, [u]ser based, without controlling ttys [x]
ps --forest # shows "process tree" also know as process hierarchy, #!Interview
pstree # shows "process tree" also know as process hierarchy, #!Interview
ps -ef # shows process list: [e]verything, [f]ull-format


#? top command:

top # # shows proccess, starts top(enters in a presetantion mode)
    q # [q]uit
    <esc> # "go back"
    k # [k]ills proccess
    t # [t]ask/cpu, filters output: Cycles between task CPU, total CPU, and memory summaries. 
    u # [u]ser, 
    h # shows [h]elp (other options)

top -u username # Show only processes owned by given [u]ser

cat /dev/zero > /dev/null # For Stress Testing: Streams zeros indefinitely (CPU + I/O).


#? bg command:

bg # Resume the most recently suspended job and run it in the background
bg 1 # sends ps 1 to back ground
sleep 100 & # "&" sends ps the backgroud and will display the assigned Pid.
ping 8.8.8.8 & # "&" executes command in the background and will display the assigned Pid.
Ctrl+Z # sends ps the backgroud
Ctrl+C # [c]ancell procces

#? jobs command:

jobs # Display status of jobs in the current session
jobs -l # Show status of all jobs, [l]ists process IDs
jobs -p # Show [p]rocess IDs of all jobs

#? fg command:

fg # Bring most recently suspended or running background job to foreground
fg 1 # sends job #1 to front ground (foreground)


#? kill command:
# https://www.tutorialspoint.com/unix/unix-signals-traps.htm

kill # kill a proccess
kill -l # [l]ist kill options
kill process_id # Terminate a program using the default SIGTERM (terminate) signal:
kill -9 process_id # Signal the operating system to immediately terminate a program (which gets no chance to capture the signal):
man 7 signal # manual page for signals

| Signal Option | Name    | Description                                                      |
| ------------- | ------- | ---------------------------------------------------------------- |
| -15 or -TERM  | SIGTERM | graceful termination (Default): process cleans up before exiting |
| -9 or -KILL   | SIGKILL | Forcefully kills the process                                     |
| -2 or -INT    | SIGINT  | Interrupts the process (like Ctrl+C in a terminal).              |
| -1 or -HUP    | SIGHUP  | Hangup signal; often reloads config without full restart.        |
| -19 or -STOP  | SIGSTOP | Pauses/suspends the process (freezes it).                        |
| -18 or -CONT  | SIGCONT | Resumes a stopped process.                                       |


#? nohup command:

nohup {command}  # runs ps it doesnt matter if session is closed, send output to 'nohub.out' file
nohup {command} & # Launch `nohup` in background mode


#? free command:

free # shows free memory RAM
free -h # shows free RAM memory: [h]uman-readable


#? swapon command:
# what is Swap space? #! Interview
# Swap space is space reserved in the disk unit that can be used as RAM memory when the regular RAM memory is full
swapon # Swap space manager, shows "Swap space" (size and used)  swapon, swapoff - enable/disable
lsblk # check partitions: look for [SWAP]


#? uptime command:

uptime # show you how long your system has been running


#? pgrep command:

pgrep <pattern> # To get a list of PIDs matching "pattern":
pgrep -f <pattern> | xargs kill # To kill all PIDs matching "pattern":


#? pkill command:

pkill "process_name" # kills process
pkill -9 ping # Force kill matching processes (can't be blocked):


#? killall command:

killall # Send kill signal to all instances of a process by name (must be exact name).
killall sleep # looks all process with the "sleep" in the name
killall -KILL process_name # Force kill a process


#? watch command:

watch # used to run command repeatedly and monitor its output and errors
watch {command} # Repeatedly run a command and show the result
Ctrl+C # Cancell watch
watch -n 60 command # Re-run a command in a 60 seconds i[n]terval
watch -d ls -l /path/to/dir # Monitor the contents of a directory, highlighting [d]ifferences as they appear
tail -f /path/to/file # [f]ollow changes on the file and provides output about it, Ctrl+C to exit
watch 'command_1 | command_2 | command_3' # Repeatedly run a pipeline and show the result

