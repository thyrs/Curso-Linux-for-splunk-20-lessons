
#? LAB. 1020 - Conditionals 
# 1. create a script with a conditional that can evaluate if the file "fstab" exists and if the directory /etc/security exists. if both are true echo "we are good", if not: echo "we are in trouble"
# 2. show the code of the script #!SS
test /etc/fstab && test /etc/security/ && echo "we are good" || echo "we are in trouble"

#? LAB. 1021 - "FOR" statement
# 1. Create a script that prints a list with the name of some classmates, use a list and a "FOR" statement. Make it sort the names if possible
# 2. show the code of the script and execution #!SS

```
echo "enter the names with an space "
nombres="esteban lorenzo ana kath rosa violeta ester"

for i in $nombres; do 
echo "$i"; 
done | sort
```

#? LAB. 1022 - while and if
# CREATE an script that shows you 3 options:
# 1. show me RAM memory in use
# 2. show Disk usage in use
# 3. exit the script

# if the user doesnt select the option "3" it shoud stay in a loop with the avilable options, 
# show execution of the script with option 2 #!SS

```
selection=0

while [ $selection != 3 ]
do

echo "select, use just the number"
echo "1. show me RAM memory in use"
echo "2. show Disk usage in use"
echo "3. exit the script"
read selection

if test $selection == "1"; then
free -h
fi

if test $selection == "2"; then
du -h
fi

done

echo "script finished"
``

#? LAB. 1023 EXTRA -  Read, if statements
# 1. Create one script and use the following features: variables, if statements, read command, I/O redirection.
# 2. Ask the user for the time and tell them: good morning, good afternoon... time to go to sleep, depending on the time.


```

#!/bin/bash

echo "que hora es? escriba en hora militar y sin ":". Ejemplo: 1PM >> 1300"
# lab () {

read -p "escribe:" user_time

if  test $user_time -gt 0 && test $user_time -lt 600 ; then
    echo "es de madrugada vaya duerma" 
    echo "es de madrugada vaya duerma" >> newfile.txt
elif test $user_time -gt 600 && test $user_time -lt 1200 ; then
    echo "buenos dias" 
    echo "buenos dias" >> newfile.txt
elif test $user_time -gt 1200 && test $user_time -lt 1800 ; then
    echo "Buenas tardes" 
    echo "Buenas tardes" >> newfile.txt
else 
    echo "buenas noches vaya duerma" 
    echo "buenas noches vaya duerma" >> newfile.txt
fi

echo "si se le olvido vealo en "newfile.txt""

```

#? LAB. 1024 EXTRA -  Create a script that clasifies age, anything greater than 17 is adult and anything greater than 39 should be Older, lower than 17: a kid
# add some terminal-emojis for fun in the script: https://emojidb.org/terminal-emojis (some distros dont support them)


```
#!/bin/bash

echo "escriba su nombre"
read -p "escribe:" nombre

echo "escriba su edad"
read -p "escribe:" user_age

if  test $user_age -gt 0 && test $user_age -le 17 ; then
    echo " $nombre, ud chiquito donde esta su mama?" 
    echo " $nombre, ud chiquito donde esta su mama?" >> ~/newfile.txt
elif test $user_age -ge 18 && test $user_age -le 38 ; then
    echo " $nombre es ud un adulto responsable?" 
    echo " $nombre es ud un adulto responsable?" >> ~/newfile.txt
elif test $user_age -ge 39 ; then
    echo " $nombre como pasa el tiempo verdad?" 
    echo " $nombre como pasa el tiempo verdad?" >> ~/newfile.txt
else 
    echo " $nombre entrada no valida" 
fi

echo "vea el registro aqui: "~/newfile.txt""
```