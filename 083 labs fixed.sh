###? Lab 0821: Using the `file` Command
# Create a hardlink, softlink and copy a binary file from /bin/:
cp /bin/pwd .
ln -s /etc/group ~/mygroup
sudo ln /etc/group ~/mygroup2
# Create a file without an extension.
touch thisfile
# Use the `file` command to identify the type of each file:(use xargs for extra karma poits) #! SS
ls | xargs file

###? Lab 0822: Archiving with `tar`
# Create a directory "yourname_dir" with sample files(use food items starting with the same latter as your name)
mkdir esteban_dir
cd esteban_dir/
touch ensalada empanada eggplant espinaca
# Create a tar archive of the directory(without any compression)
tar -cf mytar.tar esteban_dir/*
# List the contents of the tar archive #! SS
tar -tf mytar.tar
# create a new directory called "extraction" the archive to a new directory
mkdir extrantion
tar -xf mytar.tar -C extrantion/

###? Lab 0823: Compression with `tar` and `gzip`, `bzip2`, `xz`
# Use the same `yourname_dir` from 0822 or recreate it
# Create three compressed tar archives(`gzip`, `bzip2`, `xz`)
tar -czf mytar.tar.gz esteban_dir/*
tar -cjf mytar.tar.bz2 esteban_dir/*
tar -cJf mytar.tar.xz esteban_dir/*
# Compare the file sizes #! SS
ls -l | grep mytar
# Extract each archive to a different directories
tar -xf mytar.tar.gz -C esteban_dir1/
tar -xf mytar.tar.bz2 -C esteban_dir2/
tar -xf mytar.tar.xz -C esteban_dir3/

###? Lab 0824: Using `gzip` and `gunzip`
# Create a sample text file, redirecintg the output from the files: /etc/passwd and /etc/shadow
sudo cat /etc/passwd /etc/shadow > myfile.txt
# Compress the file and keeping the original (gzip) #! SS
gzip -k myfile.txt
# Decompress the file
gunzip --stdout myfile.txt.gz > dir1/myfile.txt

###? Lab 0825: Using `bzip2` and `bunzip2`
# Create a sample text file, redirecintg the output from the files: /etc/shells and /etc/group
cat /etc/shells /etc/group > myfile2.txt
# Compress the file without keeping the original (bzip2) #!SS
bzip2 -k myfile2.txt
# Decompress the file
mv myfile2.txt.bz2 dir2/
cd dir2/
bunzip2 myfile2.txt.bz2

###? Lab 0826: Using `xz` and `unxz`
# Create a sample text file, redirecintg the output from the files: ~/.bashrc
cat .bashrc > mybashrc
# Compress the file and keeping the original (xz)
xz -k mybashcr.txt
mv mybashcr.txt dir3/
# Decompress the file:
unxz mybashcr.txt.xz

###? Lab 0827: Using `zip` and `unzip`
# Create a directory with sample files, copy files from /etc/ ending with ".conf"

# Create a zip archive:
zip myzip.zip /etc/*.conf
# List the contents of the zip archive #!SS
unzip -l myzip.zip
# Extract the zip archive to a new directory
unzip myzip.zip -d dir2

###? Lab 0828: Using `cpio`
# Find all files in /etc/ with "cron." in its name, create a cpio with it #!SS
find /etc/ -iname "*cron*" | cpio -o > mycpio.cpio
cpio -t < mycpio.cpio
# Extract the cpio archive: #!SS
cpio -idvm --no-absolute-filenames < mycpio.cpio

# Verify the extracted files:



