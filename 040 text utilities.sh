#! Basics - text utilities, output redirection

#!  103.2 Process text streams using filters

#? __Objectives:__
    #? - Send text files and output streams through text utility filters to modify the output using standard UNIX commands found in the GNU textutils package.

#* Important files terms and utilities:

#? cat command:

cat # shows the content of a text file, it also can be used to con[cat]enate text.
# Usage: cat [OPTION]... [FILE]...
cat /path/to/file # shows the content of "file.txt"
cat file2 file3 fil4 # joins files

#? head command:

head # shows the first lines of a text file (10 default)  #! interview
# Usage: head [OPTION]... [FILE]...
head -n3 /path/to/file # head: shows the first 3 [n]umber of lines of a text file (10 default)
cat /path/to/file | head -n3 # head: shows the first 3 [n]umber of lines of a text file (10 default)


#? tail command:

tail # shows the last lines of a text file, (10 by default)  #! interview
# Usage: tail [OPTION]... [FILE]...
tail /var/log/auth.log # shows the last 10 lines on the text file(system logs)
tail /etc/hosts -5 # shows the last 5 lines
cat /etc/hosts | tail -5 # shows the last 5 lines
tail -f output.txt # [f]ollow changes on the file and provides output about it, Ctrl+C to exit


#? wc command:

wc /path/to/file # word count, by default shows: newline, words, and bytecounts  
# Usage: wc [OPTION]... [FILE]...
wc -l /path/to/file # [l]ine count
cat users.txt | wc  # word count


#? nl command:

nl /path/to/file # number line: number lines in a file #!cert and interview
# Usage: nl [OPTION]... [FILE]...
cat /path/to/file | nl # number line


#? less command:

less # shows the text in a "presentation" mode, #! use the same for man pages
# Usage: less [filename]...
# SEARCHING:
    /pattern # Search forward for (N-th) matching line.
    ?pattern # Search backward for (N-th) matching line.
    n # search [n]ext (for N-th occurrence).
    N # search [N]ext in reverse direction.
    q # [q]uit presentation mode #! cert
    h # [h]elp
less /path/to/file #shows file.txt as in "presentation" mode
sudo cat /var/log/dmesg | less # open "dmesg" and redirect output to less


#! - 103.4 Use streams, pipes and redirects

#?__Objectives:__
    #? - Redirecting standard input, standard output and standard error.
    #? - Pipe the output of one command to the input of another command.
    #? - Use the output of one command as arguments to another command.
    #? - Send output to both stdout and a file.

# BASH

STDIN= Standard input = 0 # information I give to "BASH"
STDOU= Standard output = 1 # information "BASH" gives me
STDERR= Standard error = 2 # Error message "BASH" gives

>  # used for Output Redirection. #!cert and interview
>> # used for Output Redirection to append.
<  # Input redirection. #? rarely used
"<<" # used for input redirection and is also known "as here document".
|  # Pipe is a Redirection to send the output of one command/program/process to another command/program/process for further processing.


#? Output redirection.

ls /path/to/directory > log.txt # sends the "Standard output(1)" to log.txt, "1" is implicit
ls /path/to/directory 1> log.txt # sends the "Standard output" to log.txt, "1" is implicit
ls /path/to/directory 2> log.txt # sends the errors to log.txt #! cert
ls /path/to/directory &> log.txt # sends "Standard output(1)" and "Standard error(2)""
ls dir1 nonexisting &> log.txt # sends "Standard output(1)" and "Standard error(2)""

#? echo
echo # Print given arguments.
echo "Hello World" # Print a text message. Note: quotes are optional
echo -n "Hello World" # Print a message without the trailing newline
echo "Hello World" > myfile.txt # redirect "Hello World" to myfile.txt


#? Input redirection.
wc -l < poem.txt # sends the "input" of poem.txt to the command: wc -l

#? "here document"(EOF):
cat <<EOF > /home/esteban/output.txt
a b c d e f g h i
EOF # EOF = "[E]nd [O]f [F]ile" used as a delimiter for the text


tr 'a,b,c,d,e' '1,2,3,4,5' < output.txt
# traduce patrones en output


#? tee command:

tee # redirects the output to a file AND displays the output in the terminal at the same time
pwd | tee /path/to/file # redirects the output of "pwd" to "file" __AND__ displays the output in the terminal
ping 8.8.8.8 | tee /path/to/pinglogs.txt
ping 1.1.1.1 | tee -a /path/to/pinglogs.txt # [a]ppend to the existing file



#? xargs command:

xargs # x argument: feeds a command using the previous one
cat ../users | xargs touch # (creates files using the name in "users")
ls | xargs rm # xargs: feeds a command using the Previous one, remove files listed with "ls"






