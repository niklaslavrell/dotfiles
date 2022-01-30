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
brew install git
brew install git-lfs
brew install ffmpeg
brew install gh

# Remove outdated versions from the cellar.
brew cleanup

###############################################################################
# Installs some nice native apps with Homebrew Cask                           #
###############################################################################

brew install --cask google-drive
brew install --cask dropbox
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask figma
brew install --cask slack
brew install --cask google-chrome
brew install --cask spotify
brew install --cask notion
brew install --cask zoom

###############################################################################
# Install tools from Yarn                                                     #
###############################################################################

yarn global add create-react-app
yarn global add firebase-tools
yarn global add gatsby-cli
yarn global add netlify-cli

###############################################################################
# Install software from the Mac App Store                                     #
###############################################################################

mas lucky Xcode
mas lucky Messenger
mas lucky Todoist

###############################################################################
# Install Oh My Zsh                                                           #
###############################################################################

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Symlink the files to ~
ln -is ~/code/dotfiles/.zshrc ~/.zshrc
ln -is ~/code/dotfiles/.gitignore ~/.gitignore
ln -is ~/code/dotfiles/.gitconfig ~/.gitconfig

source ~/.zshrc