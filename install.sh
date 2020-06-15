###############################################################################
# Installs cool command-line tools using Homebrew                             #
###############################################################################

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Developer tools and frameworks
brew install n
brew install yarn
brew install mas
brew install lastpass-cli
# brew install tree
# brew install git
# brew install node
# brew install ffmpeg
# brew install mongodb
# brew install heroku
# brew install docker
# brew install docker-machine
# brew install docker-compose

# Remove outdated versions from the cellar.
brew cleanup

###############################################################################
# Installs some nice native apps with Homebrew Cask                           #
###############################################################################

# Install Homebrew Cask
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# daily
# brew cask install flux
brew cask install google-backup-and-sync
# brew cask install rocket
# brew cask install dropbox

# development
brew cask install iterm2
brew cask install visual-studio-code
# brew cask install docker
# brew cask install postman
# brew cask install figma

# chat
brew cask install slack
# brew cask install franz
# brew cask install skype

# browsers
brew cask install google-chrome
# brew cask install firefox

# other
brew cask install spotify
brew cask install notion
# brew cask install tunnelbear
# brew cask install there
# brew cask install toggl

###############################################################################
# Install software from the Mac App Store                                     #
###############################################################################

mas lucky Xcode
mas lucky Messenger
mas lucky Todoist
mas lucky LastPass

###############################################################################
# Install Oh My Zsh                                                           #
###############################################################################

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Symlink the files to ~
ln -is ~/code/dotfiles/.zshrc ~/.zshrc
ln -is ~/code/dotfiles/.gitignore ~/.gitignore
ln -is ~/code/dotfiles/.gitconfig ~/.gitconfig

source ~/.zshrc