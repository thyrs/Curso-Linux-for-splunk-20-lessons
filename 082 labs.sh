###? Lab 0821: Using the `file` Command
# Create a hardlink, softlink and copy a binary file from /bin/:
# Create a file without an extension.
# Use the `file` command to identify the type of each file:(use xargs for extra karma poits) #! SS

###? Lab 0822: Archiving with `tar`
# Create a directory "yourname_dir" with sample files(use food items starting with the same latter as your name)
# Create a tar archive of the directory(without any compression)
# List the contents of the tar archive #! SS
# Extract the archive to a new directory

###? Lab 0823: Compression with `tar` and `gzip`, `bzip2`, `xz`
# Use the same `yourname_dir` from Lab 0822 or recreate it.
# Create three compressed tar archives(`gzip`, `bzip2`, `xz`)
# Compare the file sizes #! SS
# Extract each archive to a different directories

###? Lab 0824: Using `gzip` and `gunzip`
# Create a sample text file, redirecintg the output from the files: /etc/passwd and /etc/shadow
# Compress the file and keeping the original (gzip) #! SS
# Decompress the file

###? Lab 0825: Using `bzip2` and `bunzip2`
# Create a sample text file, redirecintg the output from the files: /etc/shells and /etc/group
# Compress the file without keeping the original (bzip2) #!SS
# Decompress the file

###? Lab 0826: Using `xz` and `unxz`
# Create a sample text file, redirecintg the output from the files: ~/.bashrc
# Compress the file and keeping the original (xz)
# Decompress the file:

###? Lab 0827: Using `zip` and `unzip`
# Copy files from /etc/ ending with ".conf", create a cpio with it
# Create a zip archive:
# List the contents of the zip archive #!SS
# Extract the zip archive to a new directory:

###? Lab 0828: Using `cpio`
# Find all files in /etc/ with "cron." in its name, create a cpio with it #!SS
# Extract the cpio archive to a new directory: #!SS
# Verify the extracted files:



#! Common Interview questions for: COMPRESSION: file, tar, gzip, gunzip, bzip2, bunzip2, xz, unxz, zip, unzip, cpio
# that is the use of tar?
# What happens when running this command: tar -fc new.tar /etc/* ? 1pts x3
# What command can be used to list the contents of a tar ball named etc.backup.tar? 1pts x3
# What happens if I use the command 'tar xfv file.tgz' to extract the contents of file.tgz? 1pts x2
# Which command is used to extract tar files into an specific directory that is not your current working directory? 1pts x2
