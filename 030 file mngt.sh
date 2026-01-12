#! Day 06 file mngt and HARD/SOFT LINKS -->

#! 103.3 Perform basic file management / file mngt:

* __Objectives:__
    - Copy, move and remove files and directories individually.
    - Copy multiple files and directories recursively.
    - Remove files and directories recursively. 
    - Use simple and advanced wildcard specifications in commands.
    - Using find to locate and act on files based on type, size, or time.
    - Usage of tar, cpio and dd.

#*# Important files terms and utilities:


#? touch command:
touch # create empty files #!cert
touch path/to/file1 path/to/file2 ... # Create specific files


#? nano command:
nano file_name # use nano to access text file (read the options on the screen ) https://www.youtube.com/watch?v=kBdQBOWvqIw
ctrl+O # write out (save)
<ENTER> # confirm to save file with current name
ctrl+X # exit


#? cat command:
cat # shows the content of a text file, it also can be used to con[cat]enate text.
# Usage: cat [OPTION]... [FILE]...
cat /path/to/file # shows the content of "file.txt"
cat file2 file3 fil4 # joins files

#? mkdir command:

mkdir # make directory
mkdir path/to/directory1 path/to/directory2 ... # Create specific directories
mkdir -p path/to/directory1 path/to/directory2 ... # Create specific directories and their [p]arents if needed

#? cp command:

cp # copy
# Usage: cp [OPTION]... [SOURCE] [DEST]
cp /path/to/sourcefile /path/to/destination # always needs destination
cp -r ~/Desktop/cruise_pics/ ~/Pictures/ # Copy a directory [r]ecursively= "everything inside #!CERT


#? mv command:

mv # move files and directories, used also to rename #! cert
mv /path/to/sourcefile /path/to/destination 
mv hello bye # changes file's name from "hello" to "bye"
mv source1 source2 source3 existing_directory # Move multiple files into an existing directory, keeping the filenames unchanged
cp empty.txt empty.txt2  # copies file and change its name

#? ls command:

ls -la # list current directory, [l]ong list, [a]ll files incluing hidden files #! interview favorite
ll # long list
ls -lS # [L]ong format list [S]orted by size (descending)
ls -R # lists the content of the directory [R]ecursively #!CERT

#? rm command:

rm # remove
rm path/to/file1 path/to/file2 ... # Remove specific files
rm -r path/to/file_or_directory1 path/to/file_or_directory2 ... # Remove specific files and directories [r]ecursively #! Cert


#? rmdir command:

rmdir # remove directory
rmdir path/to/directory1 path/to/directory2 ... # Remove specific directories
rmdir -p path/to/directory1 path/to/directory2 ... # remove DIRECTORY and its [p]arents; e.g., 'rmdir -p a/b/c' is similar to 'rmdir a/b/c a/b a'


#? find command:

find # search tool with more powerfull options #! cert, interview
# Usage: find /path/to/search -options "pattern" 
find / -iname myfile # find in "/" (root) the name: "myfile", match is case [i]nsensitive
find /etc/ -name fstab # find in "/etc", match is case sensitive, pattern: "fstab"

#? dd command: 

#! use carefully:
dd # convert and copy a file #! (AKA: Destroyer of Disks)
# copies a file (from standard input to standard output, by default)
dd if={source_path} of={destination} bs=1024 count=50
dd if=/dev/zero of=/tmp/swapfile bs=1024 count=50
    if= # the input file to be read.
    of= # the output file to be written
    bs= # block size: "1024 bytes"
    count= # amount of blocks to copy

dd if=/dev/sda of=/tmp/storage # copy the entire content of disk: "/dev/sda" into "/tmp/storage" (used to copy whole disks)

