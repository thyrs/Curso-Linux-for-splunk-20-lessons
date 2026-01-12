#? Lab 0420: Using pipes
use alt+z to word wrap
# navigate to your home directory, verfy with pwd
# Display only the first 3 lines on the file: /etc/passwd 
# Display only the last 3 lines on the file: /etc/group #! SS
# show how many words are in the file /etc/passwd ? #! SS
# show the content of /etc/shells and also display the number for each line #! SS
# show the last apperence of the word "examples" in the man pages for the "sudo" command #! SS
# go to your HOME directory and display the content of the directory showing also the hidden files(ls -a), redirect the output to the a file called yourname-redirect.txt, then display the content of the file show the number of each line #! SS


#? Lab 0421: Redirecting Standard Output and Standard Error
# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab(_yourname_dir01):
# 2. List the contents of a non-existent directory to generate an error and redirect the error to a file called `error.txt`:
# 3. List the contents of your current directory and redirect the output to a file called `output.txt`:
# 4. List the contents of the root directory and append the output to a file called `output.txt`:
# 5. Run a command that produces both output and an error, redirecting both to a single file called `combined.txt`:(example: ls ~ /invalid/dir/path)
# 6. View the contents of each file to verify the results: "cat error.txt combined.txt output.txt" #!SS

#? Lab 0422: Using `tee` to Save and Display Output
# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab:
# 2. Run the `pwd` command and use `tee` to save the output to a file called `pwd_yourname.txt` while displaying it:
# 3. Ping Google’s DNS server (`8.8.8.8`) for 3 attempts and use `tee` to save the output to `ping_yourlastname.txt`:
# 4. Verify the contents of the files with "cat" #!SS


#? Lab 0423: Using `xargs` to Process Input
# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab:
# 2. Create a file called `fileyourname.txt` with a list of your full name in each line(example):
```
pedro
perez
pereira
vive
en
portugal
```
# 3. Use `xargs` to create empty files based on the names in `fileyourname.txt`:
# 4. List the files to verify they were created (use "ls"): #!SS
# 5. Use `xargs` to remove the files listed in `fileyourname.txt`:
# 6. List the directory again to confirm the files are gone:


#? Lab 0424: Using Here Documents and Input Redirection
# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab:
# 2. Create a file called `letters.txt` using a "here document"(EOF), add your full name in the content :
# 3. Translate the letters in `letters.txt` to the vowals and numbers like this:
# 'a,e,i,o,u' '1,2,3,4,5' 
# using input redirection with `tr`: #!SS


#! Common Interview questions for: text utilities, output redirection:** >, >>, 2>, &>, |, tail, head, nl, wc, less, EOF, tr, tee, xargs
# how to write the output of a command into a file?
# how to redirect an error of a command into a file?
# what are the the redirection operators?
# how to read the first 5 line of the file?
# how to read the last 5 lines of the file?
# what is the advange of using less command?
# what is the use of echo command?
# how can you combine 2 commands? or what is pipe used for?
# how can you read a file without using cat command?
# How can you see the amount of lines in a document? 1pts
