https://learn.microsoft.com/en-us/windows/wsl/install

#Windows PowerShell with admin rights:

```PowerShell with admin rights

wsl.exe --list --online
# To see a list of available Linux distributions available for download through the online store, enter:

wsl.exe --install ubuntu
# Replace [Distro] with the name of the distribution you would like to install. "ubuntu" or "FedoraLinux-43"

wsl --unregister ubuntu
# remove container
```