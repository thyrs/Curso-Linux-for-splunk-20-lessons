#? Lab 0420:

#? Lab 0420: Using pipes
use alt+z to word wrap
# navigate to your home directory, verfy with pwd
# Display only the first 7 lines on the file: /etc/passwd #! SS
head -7 /etc/passwd
# Display only the last 7 lines on the file: /etc/group #! SS
tail -n 7 /etc/passwd
# show how many words are in the file /etc/passwd #! SS
wc /etc/passwd
# show the content of /etc/shells and also display the number for each line #! SS
nl /etc/shells
# show the last apperence of the word "examples" in the man pages for the "sudo" command #! SS
man sudo
# go to your HOME directory and display the content of the directory showing also the hidden files(ls -a), redirect the output to the a file called yourname-redirect.txt, then display the content of the file show the number of each line(use pipes) #! SS
ls -a > esteban-redirect.txt
cat esteban-redirect.txt | nl


#? Lab 0421: Redirecting Standard Output and Standard Error

# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab(_yourname_dir01):
mkdir estebandir01
# 2. List the contents of a non-existent directory to generate an error and redirect the error to a file called `error.txt`:
ls this 2> error.txt
# 3. List the contents of your current directory and redirect the output to a file called `output.txt`:
ls -l > output.txt
# 4. List the contents of the root directory and append the output to a file called `output.txt`:
ls / >> output.txt
# 5. Run a command that produces both output and an error, redirecting both to a single file called `combined.txt`:
ls noexite estebandir01/
# 6. View the contents of each file to verify the results: "cat error.txt combined.txt output.txt" #!SS
cat combined.txt error.txt output.txt

#? Lab 0422: Using `tee` to Save and Display Output

# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab:
# 2. Run the `pwd` command and use `tee` to save the output to a file called `pwd_yourname.txt` while displaying it:
pwd | tee  pwdesteban.txt
# 3. Ping Google’s DNS server (`8.8.8.8`) for 3 attempts and use `tee` to save the output to `ping_yourlastname.txt`:
pwd | tee  pingrojas.txt
# 4. Verify the contents of the files with "cat" #!SS
cat pingrojas.txt pwdesteban.txt


#? Lab 0423: Using `xargs` to Process Input

# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab:
# 2. Create a file called `fileyourname.txt` with a list of your full name in each line(example):
nano fileesteban.txt
```
pedro
perez
pereira
vive
en
portugal
```
# 3. Use `xargs` to create empty files based on the names in `fileyourname.txt`:
cat fileesteban.txt | xargs touch
# 4. List the files to verify they were created (use "ls"): #!SS
# 5. Use `xargs` to remove the files listed in `fileyourname.txt`:
ls | xargs rm -r
# 6. List the directory again to confirm the files are gone:
ls


#? Lab 0424: Using Here Documents and Input Redirection

# navigate to your home directory, verfy with pwd
# 1. Create a directory for this lab:
# 2. Create a file called `letters.txt` using a "here document"(EOF), add your full name in the content :
cat <<EOF > letters.txt
esteban rojas soto
EOF
# 3. Translate the letters in `letters.txt` to the vowals and numbers like this:
# 'a,e,i,o,u' '1,2,3,4,5' 
# using input redirection with `tr`: #!SS
tr 'a,e,i,o,u' '1,2,3,4,5' < letters.txt


