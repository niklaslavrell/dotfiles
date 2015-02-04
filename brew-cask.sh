#
# Installs some nice native apps
#

brew update

# Install HomeBrew Cask
brew install caskroom/cask/brew-cask

brew upgrade brew-cask

# daily
brew cask install alfred
brew cask install dropbox
brew cask install google-drive
#brew cask install flux

# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install macdown
brew cask install java

# browsers
brew cask install google-chrome
brew cask install firefox
#brew cask install google-chrome-canary
#brew cask install firefox-nightly --force
#brew cask install webkit-nightly --force
#brew cask install chromium --force

# other
brew cask install google-hangouts
brew cask install spotify
brew cask install skype
brew cask install slack
brew cask install vlc