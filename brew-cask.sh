#!/usr/bin/env bash

brew update

# Install HomeBrew Cask
brew install caskroom/cask/brew-cask

brew upgrade brew-cask

# Dev stuff
brew cask install java
brew cask install sublime-text
brew cask install iterm2
brew cask install macdown

brew cask install google-hangouts
brew cask install alfred
brew cask install google-chrome
brew cask install firefox
brew cask install spotify
brew cask install dropbox
brew cask install google-drive
brew cask install skype
brew cask install slack
brew cask install vlc
#brew cask install flux