#! Day 11 logs_crontab_at -->


#! 108.2 System logging:
* __Objectives:__ 
#* Important files terms and utilities:

#? /etc/rsyslog.conf:

/etc/rsyslog.conf # configuration file, shows the location of the other log files


#? /var/log/:

/var/log/ # directory where most logs are stored #! interview favorite
/var/log/syslog # general system settings


#? Logrotate(automate the rotation of log files with different settings):


/etc/logrotate.conf # General settings for logrotate

| Directive                   | Purpose                                                                       |
| --------------------------- | ----------------------------------------------------------------------------- |
| weekly/daily/monthly/yearly | Rotates the logs at the specified time interval                               |
| rotate 4                    | Determines how many rotated logs are kept before logrotate deletes older logs |
| compress                    | Specifies logrotate to compress rotated logs                                  |
| missingok                   | Tells logrotate not to return an error if the log file is not found            |


/etc/logrotate.d/ # directory for service-specific log settings 


logger -p mail.err 'TESTING!!!' # logger: creates a "test" log, [p]riority: "mail.err"
tail -5 /var/log/maillog # verify logfile content.


