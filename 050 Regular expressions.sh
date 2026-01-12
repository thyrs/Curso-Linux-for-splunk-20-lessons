#! - 103.7 Search text files using regular expressions

#? * __Objectives:__
    #? 1. Create simple regular expressions containing several notational elements.
    #? 2. Understand the differences between basic and extended regular expressions.

#? REGEX (regular expresions)
# https://learnbyexample.github.io/gnu-bre-ere-cheatsheet/
# https://antonz.org/grep-by-example/#basics
# https://blog.robertelder.org/top-5-grep-mistakes/
#! when using regular expresions, always place the pattern within "" or ''

#? Regular Expresions:
# navigate to /etc/ and try these comands:

ls | grep '^a' # "^" = inicio de linea: muestra lo que empieze con "a" al principio de la linea #!interview
ls | grep 's$' # "$" = final de linea, muestra lo que tenga "s" al final de la linea #!interview
ls | grep 'X..' # "." = un caracter: muestra todo lo que tenga "X" seguido de 2 caracteres
ls | grep '\....' # "\" convierte siguiete caracter en un simbolo literal
ls | grep [0-9] # "[]" = rango: muestra lo que tenga un numero del 0-9
ls | grep ^[a-e,z][0-9] # "^" = inicio de linea: muestra file que empieze con letra y seguido un numero #!interview
ls | grep [^0-9][a-e,z] # "^" = simbolo de negacion: (cuando esta dentro del rango),  muestra file que NO empieze con numero y segundo caracter "a-e" o "z", 
ls | grep 's.*' # "*" = 0 o mas caracteres, muestra todo lo que tenga algo despues de la "s" 
ls | grep 'g.*p' # "*" To match zero or more any characters, use ".*"
grep -i "pattern" /path/to/file # look for "pattern" in file case [i]nsensitive #!CERT


#? Extended Regular Expressions:
# (supports `?`, `+`, `{}`, `()` and `|`).

ls | grep -E 'passwd|group' # [E]nables extended filter: "passwd" OR "group"
ls | grep -E pas?wd # "?" matches the preceding character either zero or one time #! cert
ls | grep -e passwd -e group # us[e] PATTERNS for matching  "passwd" OR "group"
cat users | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" # Find IP address

#? cut command:

cut -d# -f3 # Cut out [f]ields from `stdin` or files. [d]elimiter symbol is needed #! Cert
cat /etc/passwd | cut -d: -f1 # Cut out 1st [f]ield from the file "passwd" using ":" as [d]elimiter symbol


#? sort command:

sort # Sort lines of text files. #! Cert
cat /etc/passwd | sort # Sort passwd in ascending order
sort /etc/passwd # Sort passwd in ascending order
sort -r path/to/file # To sort a file and [r]everse the result
sort -u path/to/file # To sort a file by keeping only [u]nique

#? egrep command:

egrep # Find patterns in files using extended regular expression 
# (supports `?`, `+`, `{}`, `()` and `|`).
egrep "search_pattern" path/to/file  # Search for a pattern within a file
egrep "search_pattern" path/to/file1 path/to/file2 path/to/file3  # Search for a pattern within multiple files
cat path/to/file | egrep search_pattern  # Search `stdin` for a pattern


#? fgrep command:

fgrep # Matches fixed strings in files, Equivalent to `grep -F`.
fgrep search_string path/to/file # Search for an exact string in a file
fgrep -x path/to/file1 path/to/file2 # Search only lines that match[x] entirely in files
fgrep -c search_string path/to/file # [c]ount the number of lines that match the given string in a fil       
fgrep -n search_string path/to/file # Show the line [n]umber in the file along with the line matched
fgrep -v search_string path/to/file # in[v]ert-match: display all lines except those that contain the search string


#? sed command:

sed # Stream Editor: regix utility to modify text
# Usage: sed [OPTION]... {script-only-if-no-other-script} [input-file]...
sed -i 's/[THE_OLD_TERM]/[THE_NEW_TERM]/' /path/to/file  
# Edit files [i]n place, Find and [s]ubstitude the Occurrences of the Text 



