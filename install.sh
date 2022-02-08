#/bin/bash
# a very simple instal script for bujo

# make .bujo dir and add files
echo "Adding ~/.bujo/" to home dir.
mkdir -p ~/.bujo/
cp -v todo.bujo ~/.bujo/
cp -v daily.bujo ~/.bujo/
cp -v example.bujo ~/.bujo

# add the bujo nano config file to system for color
echo "Adding .bujo color scheme to nano"
cp -v bujo.nanorc /usr/share/nano

# copy man entry
#cp -v bujo.1.gz /usr/share/man/man1

# make bin dir if needed and add "bujo', also add bin to path
echo "Adding bujo script to ~/bin"
mkdir -p ~/bin/
cp -v bujo ~/bin

# add ~/bin/ tp path
echo 'if [ -d "$HOME/bin" ] ; then' >> ~/.bashrc
echo 'PATH="$HOME/bin:$PATH"' >> ~/.bashrc
echo 'fi' >> ~/.bashrc
