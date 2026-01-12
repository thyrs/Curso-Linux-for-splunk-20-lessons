


# Question 61-1
What is the purpose of the PATH environment variable?

- [ ] A. It allows the execution of commands without the need to know the location of the executable.
- [ ] B. It increases security by preventing commands from running in certain locations.
- [ ] C. It specifies the location of a user's home directory.
- [ ] D. It indicates the location of the default shell to be used when a user logs in.
- [ ] E. It contains the absolute path to the current directory.

Answer: A



# Question 62 -1
Which of the following commands sets the variable USERNAME to the value bob?

- [ ] A. set USERNAME bob
- [ ] B. $USERNAME==bob
- [ ] C. var USERNAME=bob
- [ ] D. USERNAME<=bob
- [ ] E. USERNAME=bob

Answer: E



# Question 12
Which command is used to make a shell variable known to other executed programs?

- [ ] A. env
- [ ] B. announce
- [ ] C. export
- [ ] D. transfer

Answer: C


# Question 9
Typing the command pwd or echo $HOME will display the same output.

- [ ] A. True
- [ ] B. False

Answer: B

# Question 38
Which of the following commands adds the directory /new/dir/ to the PATH environment variable?

- [ ] A. export PATH=/new/dir: PATH
- [ ] B. PATH=/new/dir: PATH
- [ ] C. export $PATH=/new/dir: $PATH
- [ ] D. $PATH=/new/dir: $PATH
- [ ] E. export PATH=/new/dir: $PATH

Answer: E




# Question 68 
The file script.sh in the current directory contains the following content:

#!/bin/bash
echo $MYVAR

The following commands are used to execute this script:
MYVAR=value -./script.sh
The result is an empty line instead of the content of the variable MYVAR. 

How should MYVAR be set in order to make script.sh display the content of MYVAR?

- [ ] A. !MYVAR=value
- [ ] B. env MYVAR=value
- [ ] C. MYVAR=value
- [ ] D. $MYVAR=value
- [ ] E. export MYVAR=value

Answer: E
