#! 104.6 Create and change hard and symbolic links:
* __Objectives:__
    - Identify hard and/or soft links. #! interview favorite
#* Important files terms and utilities:


#? Soft or symbolic Links:
ln -s # link name, [s]oft-link, also called: [s]imbolic-link, [s]hortcut:
# Usage: ln -s /path/to/file /path/to/soft-link 
#! use absolute paths to avoid broken links !!!
ln -s /path/to/file path/to/symboliclink # [s]oft-link



#? Hard Links :
ln # Create a hard link to a file (shares Inode number)
#! use absolute paths to avoid broken links !!!
ln /path/to/file path/to/hardlink # Create a hard link to a file
ln /home/sudoadmin/Documents/file.txt newfile.txt



#? stat command:

stat # shows stadistics about a file (shows the Inode)
stat newfile.txt

find / -inum 58728825  # search by Inode number


#? file command:

file # determine file type (sudo apt install file)
file path/to/file # Give a description of the type of the specified file. Works fine for files with no file extension
file /bin/wall # me da descripsion de archivos, especial para archivos bianrios

