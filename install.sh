#!/bin/bash
# a very simple install script for bujo

# make .bujo dir and add files
echo "Installing..."
sleep .5
echo "Adding: ~/.bujo/"
sleep .2
echo "Adding: ~/.bujo/daily.bujo"
mkdir -p ~/.bujo/
cp daily.bujo ~/.bujo/

FILE=~/.bujo/todo.bujo
if [ -f "$FILE" ]; then
    echo "Master 'todo.bujo' file found!"
    sleep .5
else
    cp todo.bujo $FILE
    echo "Adding: ~/.bujo/todo.bujo"
fi

# copy man entry
#cp -v bujo.1.gz /usr/share/man/man1

# make bin dir if needed and add "bujo'
echo "Adding: bujo to ~/bin/"
sleep .5
mkdir -p "$HOME/bin/"
cp bujo "$HOME/bin"

# add ~/bin/ to path in bashrc, this will make the 'bujo' command accessable is a bash shell
echo "Adding: ~/bin/ to PATH"
sleep .5
{
echo 'if [ -d "$HOME/bin" ] ; then'
echo 'PATH="$HOME/bin:$PATH"'
echo 'fi'
} >> ~/.bashrc


# Add the bujo nano config file to system for color
echo
echo "To Complete installation, place 'bujo.nanorc' file into /usr/share/nano"
echo "Run:  sudo cp bujo.nanorc /usr/share/nano"

