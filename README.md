# Bullet Journal

Writen by ndbest

Bullet Journal(bujo) is a simple bash linux script with a few support files.  It is designed to be a
bare bones digital equvilant of a bullet journal for terminal.  It automatically color
codes items based on syntax and can migrate tasks and meeting based on the date.

Download the tar file, and run 'sudo install.sh' to setup or
just read the install and put the files in yourself!

Run 'bujo -x' to run the tutorial program

## Help File
```sh
Usage: bujo.sh [OPTION]

 -n	start new day and migration
 -M	migrates all tasks

 -s	print summary
 -a	print all tasks

 -i	print ! tasks
 -t	print * tasks
 -l	print *l tasks and migrates them
 -m	print meetings
 -E	print things to be explored
 -e	print emails

 -d	edit daily tasks
 -x	open example format
 -b	bujo -b [task] adds task without opening nano

 -h	print this text
```
