#! COMPRESSION:
    - Usage of tar, cpio


#? file command:

file # determine file type (sudo yum install file)
file path/to/file # Give a description of the type of the specified file. Works fine for files with no file extension
file /bin/wall # It gives description of files, especially for binary files.


#? tar command:(may keep original permitions) 

* = zero or more characters #! CERT

tar # tape archive = tarball (archiving file) (sudo yum install tar) #! CERT, Interview
# Usage: tar -cf {tarball_name} {path_for_files}
#! -f should be at the end of the options
tar -cf example.tar /etc/* # [c]reate "example.tar" from [f]iles in /etc/ #! CERT
tar -tf example.tar # list [t]able of content for [f]iles
tar -xf example.tar # e[x]tract [f]iles #!(default destination is the currect directory) #! CERT
tar -xf example.tar -C /path/to/destination # e[x]tract [f]iles: [C]hange to directory specified

#! CASCARA DE BANANO: tar comprime archivos pero no by default!! CERT Question

#? tar with compression options: 

tar -czf example1.tar.gz /etc/* # [c]reate "example2.tar.gz" using g[z]ip from [f]iles in /etc/ 
tar -cjf example2.tar.bz2 /etc/* # [c]reate "example2.tar.bz2" using [j]bzip2 from [f]iles in /etc/ 
tar -cJf example3.tar.xz /etc/* # [c]reate "example2.tgz" using [J]xz from [f]iles in /etc/ 

# -z = gzip compression #!CERT
# -j = bzip2 compression #!CERT
# -J = xz compression #!CERT

tar -xf example1.tar.gz -C /path/to/destination # e[x]tract [f]iles: [C]hange to directory specified
tar -xf example2.tar.bz2 -C /path/to/destination # e[x]tract [f]iles: [C]hange to directory specified
tar -xf example3.tar.xz -C /path/to/destination # e[x]tract [f]iles: [C]hange to directory specified


#? gzip command:

gzip file.ext # Compress a file, replacing it with a gzip compressed version
gzip -k file.ext # # Compress a file, but [k]eep the original
gzip -l file.ext.gz # [l]ist compressed file contents
gzip -d file.ext.gz # [d]ecompress a file, replacing it with the original uncompressed version:
gunzip file.ext.gz # Decompress a file, replacing it with the original uncompressed version:
gzip -c test.txt > /path/to/test.txt.gz # compressed file and [c]hange the location 


#? bzip2 command:
bzip2 # A block-sorting file compressor (sudo yum install bzip2)
bzip2 path/to/file_to_compress # Compress a file, replacing it with a gzip compressed version
bzip2 -k file.ext # Compress a file, but [k]eep the original
bzip2 -d path/to/compressed_file.bz2 # [d]ecompress a file *.bz2 format
bunzip2 path/to/compressed_file.bz2 # decompress a file *.bz2 format

#? bunzip2 command:
#  Each compressed file has the same modification date, permissions, and, when possible, ownership as the corresponding original. Run as root/sudo if needed.
# https://www.studytonight.com/linux-guide/decompress-files-with-bunzip2-command-in-linux

bunzip2 # decompress a block-sorting file compressed file
bunzip2 path/to/compressed_file.bz2 # decompress a file *.bz2 format


#? xz command:

xz # Compress or decompress .xz and .lzma files. (sudo yum install xz)
xz path/to/file # Compress a file to the xz file format
xz -k path/to/file # Compress a file, but [k]eep the original
xz -l path/to/file.ext.xz # list information about .xz files
xz -d /path/to/file.ext.xz # [d]ecompress .xz format
unxz /path/to/file.ext.xz # decompress FILEs in the .xz format, an alias of `xz --decompress`.


#? zip command:

zip # Tar and compression at the same time (sudo yum install zip) #! CERT
zip -r path/to/compressed.zip path/to/file_or_directory1 path/to/file_or_directory2 .. # Add files/directories to a specific archive ([r]ecursively)
zip documents.zip /etc/* # Tar and compression at the same time 
unzip -l documents.zip # [l]ist the contents of the zip archive
unzip documents.zip # unTar and decompress at the same time
unzip path/to/archive1.zip path/to/archive2.zip -d path/to/output # Extract from archives to a specific [d]irectory:



#? cpio command:
# https://www.youtube.com/watch?v=rNWhXBSncsI

cpio # copy files to and from archives, same as tar. It works like xargs (sudo yum install cpio)
ls | cpio -o > archive1.cpio # list files in current directory and add them [o]nto an archive
echo "file1 file2" | cpio -o > archive2.cpio # Take a list of file names and add them [o]nto an cpio archive 

cpio -t < archive1.cpio # list [t]able of content for files

# Example:

find /bin/ -iname "*q*" | cpio -ov > archive.cpio # Copy files ending in "w" inside /bin/ and add them [o]nto an archive, in [v]erbose mode

cpio -idvm --no-absolute-filenames < path/to/archive.cpio # Extract a specific cpio archive:

# -i, --extract              Extract files from an archive (run in copy-[i]n)
# -d, --make-directories     Create leading directories where needed
# -m, --preserve-modification-time
# -v, --verbose 


