
#! 1st mock inter ver1


# 00. Login to ec2-3-135-228-35.us-east-2.compute.amazonaws.com with username splunker (1pts)  
# 01. Create a directory named [yourname]_DIR in your home folder (1pt) 
# 02. Create an empty file named [yourname]_LAB in your home folder (1pt)  
# 03. Edit the file [yourname]__LAB and append today's full date (e.g., October 13, 2025) to it (+1pt extra if using echo and output redirection) (2pts)  
# 04. Find a file named "wtmp" anywhere in the system and show its full path, then display its last 10 lines of contents (3pts)  
# 05. Append the output from step 04 (last 10 lines of /var/log/wtmp) to the end of [yourname]_FINAL (2pts)  
# 06. Move the file [yourname]_FINAL into the directory [yourname]_DIR, (1pts) using the absolute path for an extra point(1pts)
# 07. Navigate to the root directory (/) and list all hidden files there (1pt)  
# 08. Change to the /etc directory and show all files starting with 'c' or 'm' (case-insensitive) (2pts)  
# 09. Create a symbolic link in /tmp named "config_link" pointing to /etc/passwd (1pt)  




## Option 1 (Linux Shell Basics - File Creation & Manipulation)
# (Total: 14pts - Focus: Creation, editing, moving, and linking with verification)*

# 00. Login to ec2-3-135-228-35.us-east-2.compute.amazonaws.com with username splunker (1pts)  
ssh splunker@ec2-3-135-228-35.us-east-2.compute.amazonaws.com
# 01. Create a directory named [yourname]_DIR in your home folder (1pt)
cd ~
mkdir estebandir
# 02. Create an empty file named [yourname]_LAB in your home folder (1pt)  
touch estebanlab
# 03. Edit the file [yourname]__LAB and append today's full date (e.g., October 13, 2025) to it (1pts)  
echo "oct13" > estebanlab
# 04. Locate the file "wtmp" in the system, then display its last 10 lines of contents (3pts)  
sudo find / -iname wtmp
tail -10 /var/log/wtmp
# 05. Append the output from step 04 (last 10 lines of /var/log/wtmp) to the end of [yourname]_FINAL (2pts)  
tail -10 /var/log/wtmp >> estebanlab
# 06. Move the file [yourname]_FINAL into the directory [yourname]_DIR, (1pts) using the absolute path for an extra point(1pts)
mv estebanlab estebandir
# 07. Navigate to the root directory (/) and list all hidden files there (1pt)  
cd /
ls -a
# 08. Change to the /etc directory and show all files starting with 'c' or 'm' (case-insensitive) (2pts)  
ls | grep ^m ; ls | grep ^c
# 09. Create a symbolic link in /tmp named "config_link" pointing to /etc/passwd (1pt)  
ln -s /etc/passwd /tmp/config_link




#! 1st mock inter ver2

# 00. Login to ec2-3-135-228-35.us-east-2.compute.amazonaws.com with username splunker (1pts)  
# 01. create a file and add todays date on the content (1pt)  
# 02. Find a file named "screenrc" anywhere in the system and show its full path (2pts)  
# 03. Show me the location where you can typically find system configuration files (1pt)  
# 04. Display the first 7 lines of the file /etc/rpc (2pts) 
# 05. Switch to the root user (1pts)  password: rootpass
# 06. Add a new user account using your first name as the username (1pts)  
# 07. Create a new directory named "temp_work" in the current location (1pt)  
# 08. Navigate to the home directory of the current user (1pt)  
# 09. Copy the file /etc/fstab the output to your current directory and verify it copied successfully (2pts)  
# 10. List all files in the current directory, including hidden ones, in long format (1pt)  




# 00. Login to ec2-3-135-228-35.us-east-2.compute.amazonaws.com with username splunker (1pts)  
ssh splunker@ec2-3-135-228-35.us-east-2.compute.amazonaws.com
# 01. create a file and add todays date on the content (1pt)  1
nano myfile.txt
# 02. Find a file named "screenrc" anywhere in the system and show its full path (2pts)  0
find / -name screenrc 2>> myfile.txt
# 03. Show me the location where you can typically find system configuration files (1pt)  1
cd /etc/
# 04. Display the first 7 lines of the file /etc/rpc (2pts) 
head -n 7 /etc/rpc
# 05. Switch to the root user (1pts)  password: rootpass
su root
# 06. Add a new user account using your first name as the username (1pts)  
useradd rojas
# 07. Create a new directory named "temp_work" in the current location (1pt)  1
mkdir temp_work
# 08. Navigate to the home directory of the current user (1pt)  1
cd ~
pwd
# 09. Copy the file /etc/fstab the output to your current directory and verify it copied successfully (2pts)  2
cat /etc/fstab > myfstab
cp /etc/fstab ~/myfstab

cat myfstab
# 10. List all files in the current directory, including hidden ones, in long format (1pt)  1
ls -al
