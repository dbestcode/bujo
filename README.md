# Bullet Journal (bujo)
for linux  

Written by N. Best

A traditional bullet journal is basically a syntax used in a notebook to keep track of daily items and see your progress at a glance.  'bujo' consists of a nano syntax file and a simple bash script with a few support files.  It is designed to be a bare bones digital equivalent of a bullet journal for terminal.  Using a very minimal markup syntax, it  color codes items based on symbol at the beginning of a line like the traditional paper version.  The script can also can migrate tasks and meetings based on the date.

### Installation 

Download the zip file, and run the following commands or read the install.sh file and place the files.

```sh
sudo apt install nano
unzip bujo-main.zip
cd bujo-main/
./install.sh'
sudo cp bujo.nanorc /usr/share/nano
```


Once installed run :
```
'bujo -x'
``` 
to run the tutorial program, it will guide the user through the syntax and how it is used.  Running the 'bujo' script will open a continual 'todo.bujo' file while will serve as a daily journal, but the bujo.nanorc file is installed, it will color code any *.bujo file on ones system.  This can be helpful if you need 'todo' lists in different directories to keep track of files.

## Syntax overview
A few of the symbols to color code 'bujo' lists.  Many more are available if you check out the tutorial.
```
* Normal task
! Important task
M Meeting
@ Email to be answered
X* Completed task
CX* Canceled task
```
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
