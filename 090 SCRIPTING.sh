#! Day 10 SCRIPTING -->

# you need to learn BASH Scripting RIGHT NOW!!
# https://www.youtube.com/watch?v=SPwyp2NG-bE&list=PLIhvC56v63IKioClkSNDjW7iz-6TFvLwS&index=2


#! 105.2 Customize or write simple scripts:
* __Objectives:__
    - Use standard sh syntax (loops, tests).
    - Correctly select the script interpreter through the shebang (#!) line.


#? Important files terms and utilities:

chmod +x script.sh # adds e[x]ecution permissions bits to "script.sh" #! always needed !!! #!CERT
sh script_name.sh # execute the script using "sh". it may give you issues
bash script_name.sh # execute the script using "bash" #!CERT, look at the extensions
./script_name.sh # execute the script #!CERT, Interview


#? shebang:

```
#!/bin/bash
# shebang "SHArp bang"(command source directory), #! interview, #!CERT
# first line on the script (best practice)
```

#? Logical and Comparison Operators:

|| # OR
&& # AND
== # equal
!= # not equal

#? List of Bash Operators for the Comparison of Integer Numbers
# https://linuxsimply.com/bash-scripting-tutorial/operator/comparison-operators/ -->

| Operator | Meaning                     | Syntax               |
| -------- | --------------------------- | -------------------- |
| -eq      | is equal to                 | if [ “$a” -eq “$b” ] |
| -ne      | is not equal to             | if [ “$a” -ne “$b” ] |
| -gt      | is greater than             | if [ “$a” -gt “$b” ] |
| -ge      | is greater than or equal to | if [ “$a” -ge “$b” ] |
| -lt      | is less than                | if [ “$a” -lt “$b” ] |
| -le      | is less than or equal to    | if [ “$a” -le “$b” ] |
| <        | is less than                | if ((“$a” < “$b”))   |
| <=       | is less than or equal to    | if ((“$a” <= “$b”))  |
| >        | is greater than             | if ((“$a” > “$b”))   |
| >=       | is greater than or equal to | if ((“$a” >= “$b”))  |


#? test command:

```
test 10 -eq 20 && echo "true" || echo "false" # this gives true or false 

[ "abc" != "ABC" ] && echo $? || echo $? # this gives number 0 if succesfull and other number in case is a error

echo $? # is used to print the exit status of the last executed command. #!CERT
```

#? Variables:

$USER #shows the current user
$HOME #shows the current user home directory
$PWD #shows the current user working directory

nano nombre.sh # This script that sets two variables: "nombre" and "apellido". It then outputs two messages via echo:
```
#!/bin/bash
nombre="ESTEBAN"
apellido="ROJAS"

echo "pase adelante $nombre "
echo "ya le toca el tiempo a los de apellido: $apellido"
```

nano tiempo.sh # This script that sets two variables: "dia" and "clima". It then outputs a message via echo:
```
dia="lunes"
clima="lloviendo"

echo "hoy es $dia, y afuera esta $clima"
``` 


#? read command:

nano edades.sh # A simple Bash script that prompts the user in for their age via `read`, then echoes it back.
```
# read = recieves user input
echo "cual es su edad?"
read age
echo su edad es $age
```


nano newscript.sh
```
echo "cual es tu nombre?"
read name
echo "cual es tu apellido?"
read lastname
echo "cual es tu animal favorito?"
read animal

echo "tu nombre es $name, de la familia $lastname, y tu animal favorito es:"

cat << 'EOF'

 /\_/\   this is called "ascii art" it is widely used in the industry
( o.o )  Find this kind of art in:  (https://www.asciiart.eu/)
 > ^ <
EOF

```



#? if (conditional statement):


nano gatito.sh # This script prompts the user to view an ASCII bear (1=yes, 2=no), printing the art pun on yes, or a curt dismissal on no.
```
echo "quieres ver un gatito? responde 1=si o 2=no"
read respuesta

if test $respuesta == "1"; then
cat << 'EOF' 

 /\_/\   this is called "ascii art" it is widely used in the industry
( o.o )  Find this kind of art in:  (https://www.asciiart.eu/)
 > ^ <
EOF      
fi

if test $respuesta == "2"; then
echo entonces no me moleste
fi
```


nano numeros.sh
```
if test 1 -eq 2; then
echo esto es cierto 
else
echo esto no es cierto
fi #! cascara de banano
```


nano bar.sh # This script prompts for age, granting bar entry if 18+ ("sit down, I'll serve you") or dismissing minors.
```
echo "hola este es el bar del pueblo, cuantos an'os tienes?"
read years


if test $years -ge 18; then
echo "sientese que le sirvo"
else
echo "chiquito vaya busque a su mama"
fi #! cascara de banano
```

nano variable.sh
```
echo "que le muestro la variable PATH[1] o la variable USER[2]"
read respuesta

if test $respuesta == "1"; then
echo $PATH
fi

if test $respuesta == "2"; then
echo $USER
fi
```


#? for (loop statement): 
#!CERT

nano elefantes.sh # The script loops 1-9 times, reciting a verse of "Los Elefantes" children's rhyme with a 10-second pause between each iteration.
```
lista="1 2 3 4 5 6 7 8 9"

for i in $lista; do

echo "$i elefante se columpiaba sobre la tela de una aran'a como veia que resistia fueron a llamar otro elefante"
sleep 10

done
```

nano zoo.sh
```
animals="pedro roberto julio cassandro laurence"

for i in $animals; do

echo "ahi viene el $i"

done #! cascara de banano
```



#? while (loop statement):

nano codigo.sh
```
echo "dime el numero secreto"
read passcode

while [ $passcode != 6 ]
do
echo "el numero es incorrecto, intenta otra vez, estas atrapado hasta que aciertes"
read passcode
done

echo "codigo correcto puedes salir" 
```


nano counter.sh
```
i=0

while [ $i -le 5 ]
do
  echo Number: $i
  ((i++)) # adds 1 to the amount
done
```




#? conditional and loop

nano menu.sh
```
echo "hola que le sirvo?: 1) vaso de agua, 2) cerveza, 4) para salir"

read selection

while test $selection != 4
do
if test $selection == 1; then
echo "vaso de agua 🥛"

elif test $selection == 2; then
echo "tome su cerveza 🥴🍻"

else
echo "selecion invalida"
fi

echo "hola que le sirvo: 1 vaso de agua, 2 cerveza, 4 para salir"
read selection
done

echo "gracias por preferirnos, vuelva pronto"
```


#? command test 
test # Check file types and compare values. Returns 0 if true, 1 if false.

test -f "path/to/file_or_directory" # Test if a file exists:
echo $? # check last command exit status Returns 0 if true, any other number if false.
test 10 -eq 20 # Test an logic statement is true or false 
[ "abc" != "ABC" ] # Test an logic statement is true or false 
curl cheat.sh/test
man [


#? command if 
if # Performs conditional processing in shell scripts.
if test 10 -eq 20; then echo "true"; fi
if [ "abc" != "ABC" ]; then echo "true"; else echo "false"; fi
# List all possible conditions (`test` is an alias to `[`; both are commonly used with `if`):
curl cheat.sh/if


#? command for 
for # Perform a command several times.
```
for i in 1 2 3 4 5 6 7 8 9 10
do
  echo $i
done
```
for variable in item1 item2 ...; do echo "Loop is executed"; done # Execute the given commands for each of the specified items
curl cheat.sh/for


#? command while 
while # Simple shell loop.
curl cheat.sh/while





