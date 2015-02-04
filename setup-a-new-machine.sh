#
# Installs dependencies
#

# homebrew! install all the things
./brew.sh
./brew-cask.sh
./npm.sh

# https://github.com/rupa/z
# z, oh how i love you
cd ~/Developer
git clone https://github.com/rupa/z.git
chmod +x ~/Developer/z/z.sh

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

# change to bash 4 (installed by homebrew)
BASHPATH=$(brew --prefix)/bin/bash
sudo echo $BASHPATH >> /etc/shells
chsh -s $BASHPATH # will set for current user only.
echo $BASH_VERSION # should be 4.x not the old 3.2.X

# Later, confirm iterm settings aren't conflicting.