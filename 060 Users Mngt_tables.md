<!--! Use Alt+Z to toggle word wrap -->

You can use TAB and Shift+TAB to navigate through the tables in Markdown (extension "Markdown Table" by Takumi Ishii should be installed).

# /etc/passwd file:
> Go to your /etc/passwd and fill the table with your info:

| name      | password | User ID (UID) | Group ID (GID) | comments | home directory  | shell     |
| --------- | -------- | ------------- | -------------- | -------- | --------------- | --------- |
| rojases   | x        | 1001          | 1001           | NA       | /home/rojases   | /bin/bash |
| alejandro | x        | 1006          | 1019           | NA       | /home/alejandro | /bin/sh   |
|           |          |               |                |          |                 |           |

shift+alt

| home directory  |
| --------------- |
| /home/rojases   |
| /home/alejandro |
|                 |

alejandro:x:1006:1019::/home/alejandro:/bin/sh


rojases:x:1001:1001::/home/rojases:/bin/bash



# /etc/group file:
> Go to your /etc/group and fill the table with your sudoers group info:

| group_name | password | GID | user_list                           |
| ---------- | -------- | --- | ----------------------------------- |
| wheel      | x        | 10  | ec2-user,rojases,splunker,dmorerar, |
| sudo       | x        | 27  | nuc-esteban,alejandro               |
|            |          |     |                                     |

sudo:x:27:nuc-esteban,alejandro


# /etc/shadow file:
<!--! Use Alt+Z to toggle word wrap -->
> Go to your /etc/shadow and fill the table with your info:

| user      | encrypted password (hash) | date of last password change | minimum days between changes | maximum days password is valid | warn days before expiration | inactive days before lock | account expiration date |
| --------- | ------------------------- | ---------------------------- | ---------------------------- | ------------------------------ | --------------------------- | ------------------------- | ----------------------- |
| esteban2  | $6$nsFH.5zNkf6QcE1Y$      | 20396                        | 0                            | 99999                          | 7                           | NA                        | NA                      |
| alejandro | $y$j9T$h9pdfNI0EajstC     | 20397                        | 0                            |                                |                             |                           |                         |

precionando TAB

alejandro:$y$j9T$h9pdfNI0EajstC:20397:0:99999:7:::
123
