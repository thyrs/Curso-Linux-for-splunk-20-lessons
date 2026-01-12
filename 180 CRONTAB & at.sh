

#! 107.2 Automate system administration tasks by scheduling jobs:

* __Objectives:__
    - Manage cron and at jobs.

#* Important files terms and utilities:

/etc/cron.{d,daily,hourly,monthly,weekly}
# it’s easier to manage the contents of /etc/cron.d using scripts
# https://unix.stackexchange.com/questions/417323/what-is-the-difference-between-cron-d-as-in-etc-cron-d-and-crontab

#? Crontab command:

/etc/crontab # contains scheduled tasks, #! as root
crontab --help
crontab -l # [l]ist crontab scheduled task, #! per user, saved in /var/spool/cron/
crontab -e # [e]dits file , #! per user


#? crontab format:
```
* * * * *  command_to_execute
- - - - -
| | | | |
| | | | +- day of week (0 - 7) (where sunday is 0 and 7)
| | | +--- month (1 - 12)
| | +----- day (1 - 31)
| +------- hour (0 - 23)
+--------- minute (0 - 59)
```

# example entries:

*/15 * * * * /home/user/command.sh # every 15 min
0 0 * * * /home/user/command.sh # every midnight
5 8 * * 6 /home/user/command.sh # every Saturday at 8:05 AM

@reboot echo "hello my people"  



#? at command

at # Execute commands once at a later time. That's all !!!

sudo yum install at # install "at"
sudo systemctl enable atd # enable it from boot
sudo systemctl start  atd # start service
sudo systemctl status atd # check service status

at --help 

# To schedule a one time task:
at <time>
<command 0>...
Ctrl-d

at now # opens a dialog to execute commands immediately
    ctrl+d # to exits dialog

at now + 1 hour  # opens a dialog to execute commands in 1 hour
    ctrl+d # to exit dialog

atq # shows at jobs queue

atrm 7 # use this command to remove specific task

/path/to/config_file #! No separate file, commands are entered directly 

/etc/at.allow # files allow you to control which users can create jobs with at or batch command
/etc/at.deny # files allow you to control which users can create jobs with at or batch command


