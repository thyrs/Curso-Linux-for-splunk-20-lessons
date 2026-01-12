### Lab 0: simple file mgmt
# 0. - If you don't have them, create the folders Downloads, Desktop, Documents
mkdir Downloads Desktop Documents
# 1. - Enter the Downloads folder and create a .txt file named "textfile.txt" with your name as its content.
cd Downloads/
echo "ESTEBAN R" > textfile.txt
# 2. - Copy the file to the Desktop folder, then rename it to "newtextfile.txt".
cp textfile.txt /home/nuc-esteban/Desktop/newtextfile.txt
# 3. - Add "good morning" to the document using nano.
cd ~/Desktop/
nano newtextfile.txt
# 4. - Create a folder inside Desktop/ named "myfolder" and move newtextfile.txt to that folder.
mkdir myfolder
mv /home/nuc-esteban/Desktop/newtextfile.txt /home/nuc-esteban/Desktop/myfolder/
# 5. - Delete "textfile.txt" inside Downloads.
rm ../Downloads/textfile.txt
# 6. - Return to the home directory "~" and use cat on "newtextfile.txt".
cd ~
cat Desktop/myfolder/newtextfile.txt
# 7. Send a screenshot of the last command. #! SS

mv textfile2.txt ~/Desktop


### Lab 1: Creating and Managing Symbolic Links
# Learn how to create, identify, and manage symbolic (soft) links.

# Navigate to your home directory:
cd ~
# Create a file in the Documents folder(use your name and the date as contenu):
echo "esteban ROJAS HOY LUNES" > Documents/file.txt
# Create a symbolic link to this file on the Desktop(name it "shortcutname.txt"):
ln -s ~/Documents/file.txt ~/Desktop/shortcutname.txt
# List files in the Desktop directory to see the link:
ls -la ~/Desktop/
# Use `cat` to display the content of `shortcutname.txt`:
cat ~/Desktop/shortcutname.txt
# Add more text to the original file:
echo "Adding more content" >> ~/Documents/file.txt
# Verify that changes reflect in the symbolic link:
cat ~/Desktop/shortcutname.txt 




### Lab 2: Creating and Managing Hard Links
# Learn how to create, identify, and manage hard links.

1. **Create a Hard Link:**
# Navigate to your home directory:
cd ~ 
# Create another file in the Documents folder(use your name and the date as contenu):
echo "esteban ROJAS HOY LUNES" > Documents/hardfile.txt 
# Create a hard link to this file on the Desktop(name it newhardfile.txt):
ln ~/Documents/hardfile.txt ~/Desktop/newhardfile.txt 

2. **Verify Inode Numbers of Both Files:**
# Use `stat` command to check inode numbers of both files:
stat ~/Documents/hardfile.txt 
stat ~/Desktop/newhardfile.txt 

3. **Modify One File and Check Both Files:**
# Add more text to one of them (e.g., `newhardfile.txt`):
echo "Adding more content" >> ~/Desktop/newhardfile.txt 
# Verify that changes reflect in both files by checking contents of both files using `cat` command.
cat ~/Documents/hardfile.txt  
cat ~/Desktop/newhardfile.txt  

4. **Find Files by Inode Number:**
# Find all files with same inode number as `newhardfile.txt` (use inode number from previous step):
find /home/your_username/ -inum <inode_number>  


 

 