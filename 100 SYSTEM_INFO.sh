#! Day 09 PARTITIONS and SYSTEM_INFO 


#! 104.2 Maintain the integrity of filesystems:
* __Objectives:__
    - Verify the integrity of filesystems.
    - Monitor free space and inodes.

#* Important files terms and utilities:


#? the /etc/fstab file:

/etc/fstab # "FileSystem table" operating system's file system table, "mount points" #! CERT interview favorite
man 5 fstab # shows info about the details in /etc/fstab 

# | **device name**   | **mount point** | **fs_type**    | **options**          | **dump** | **boot checks** |
# | ----------------- | --------------- | -------------- | -------------------- | -------- | --------------- |
# | UUID=7ff55608c1c4 | /               | xfs            | defaults             | 0        | 0               |
# | UUID=7B77-95E7    | /boot/efi       | vfat           | defaults,uid=0,gid=0 | 0        | 2               |


#? lsblk command:

lsblk # "List block" devices along with their partitioning schemes 
lsblk --fs # To [f]etch/look info about filesystems
lsblk /dev/sda # To show a specific device #! CERT, check the format of partitions

#? blkid command:

sudo blkid # Lists "block ID": all recognized partitions and their Universally Unique Identifier (UUID).
sudo blkid -o list # List all partitions in a table, including current mountpoints, [o]utput format




#? fsck command:

fsck # "filesystem Check" Check the integrity of a filesystem or repair it. #! It should be unmounted at the time the command is run.   
fsck -f /dev/sda2 # [f]ile system check
sudo fsck /dev/sda2 # Check filesystem `/dev/sda2`, reporting any damaged blocks
sudo fsck -r /dev/sda2 # Check filesystem `/dev/sda2`, [r]eporting any damaged blocks and interactively letting the user choose to repair each one
sudo fsck -a /dev/sda2 # Check filesystem `/dev/sda2`, reporting any damaged blocks and [a]utomatically repairing them


#? du command:

du # "disk usage" of the set of FILEs, default is the current directory
du -h /etc # Disk usage from /etc, [h]uman-readable
du -b|k|m path/to/directory # List the sizes of a directory and any subdirectories, in the given unit [B/KiB/MiB]:
du -h --max-depth=N path/to/directory # List the [h]uman-readable sizes of a directory and any subdirectories, up to N levels deep


#? df command:

df # 'disk free': Gives an overview of the filesystem disk space usage #! INTERVIEW
df -h path/to/file_or_directory # [h]uman-readable, Display the filesystem and its disk usage containing the given file or directory:


#? free command:

free # shows free memory RAM #! INTERVIEW favorite
free -h # shows free RAM memory: [h]uman-readable


#? uname and hostnamectl command:
uname -a # uname: shows the "[a]ll info" of uname: kernel version
hostnamectl # shows machine hostname info: OS, Architecture... #! INTERVIEW
/etc/os-release # info about OS

#? lscpu command:
lscpu # display information about the CPU architecture #!Interview


#? swapon command:
# what is Swap space? #! Interview
# Swap space is space reserved in the disk unit that can be used as RAM memory when the regular RAM memory is full
swapon # Swap space manager, shows "Swap space" (size and used)  swapon, swapoff - enable/disable
lsblk # check partitions: look for [SWAP]