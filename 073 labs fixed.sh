##? Lab 0720: Debian Package Management with `dpkg` and `apt`
# Download this Debian package using your CLI: http://ftp.de.debian.org/debian/pool/main/c/cowsay/cowsay_3.03+dfsg2-8_all.deb
wget http://ftp.de.debian.org/debian/pool/main/c/cowsay/cowsay_3.03+dfsg2-8_all.deb
# Install it using `dpkg`
sudo dpkg -i cowsay_3.03+dfsg2-8_all.deb
# Make the cow say your name #!SS
cowsay Esteban rojas
# Uninstall it using `dpkg`
sudo dpkg -r cowsay
# Verify looking on the installed packages and filtering with "grep"
dpkg -l | grep cow

##? Lab 0721: Debian Package Management with `apt`
# Using `apt`, check if the utility "sl" is available in the repository
apt search sl | grep "^sl" | head
# Using `apt`, install this utility: "sl"
sudo apt install sl -y
# Verify looking on the installed packages and filtering with "grep" (using apt)
apt list --installed | grep "^sl"
# Check its man page and search for the word "Masashi" #!SS
man sl | grep "Masashi"
# Using `apt`, uninstall this utility: "sl"
sudo apt remove sl -y

##? Lab 0722: Managing Services with `systemctl` on Ubuntu

# Install the `apache2` package (Apache web server) using `apt`
sudo apt install apache2 -y
# Check the status of the `apache2` service
systemctl status apache2
# Enable the `apache2` service to start automatically on system boot
sudo systemctl enable apache2
# Start the `apache2` service if it is not already running, and verify its status #!SS
sudo systemctl start apache2
# Stop the `apache2` service
sudo systemctl stop apache2
# Restart the `apache2` service to ensure it can be stopped and started again
sudo systemctl restart apache2
# Disable the `apache2` service from starting automatically on boot
sudo systemctl disable apache2
# Uninstall the `apache2` package (Apache web server) using `apt`
sudo apt remove apache2 -y
