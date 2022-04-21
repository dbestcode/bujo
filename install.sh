#/bin/bash
# a very simple install script for bujo
pcolor=$(tput setaf 1)
normal=$(tput sgr0)

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
    text="Master 'todo.bujo' file found!"
    printf "${pcolor}${text}${normal}\n"
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
mkdir -p ~/bin/
cp bujo ~/bin

# add ~/bin/ to path in bashrc, this will make the 'bujo' command accessable is a bash shell
echo "Adding: ~/bin/ to PATH"
sleep .5
echo 'if [ -d "$HOME/bin" ] ; then' >> ~/.bashrc
echo 'PATH="$HOME/bin:$PATH"' >> ~/.bashrc
echo 'fi' >> ~/.bashrc


# Add the bujo nano config file to system for color
echo
text="To Complete installation, place 'bujo.nanorc' file into /usr/share/nano"
printf "${pcolor}${text}${normal}\n"
echo "Run:  sudo cp bujo.nanorc /usr/share/nano"

