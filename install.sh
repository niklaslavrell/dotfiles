###############################################################################
# Installs cool command-line tools using Homebrew                             #
###############################################################################

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Developer tools and frameworks
brew install yarn
brew install mas
brew install git
brew install git-lfs
brew install lazygit
brew install ffmpeg
brew install gh
brew install fzf
brew install fnm
brew install direnv
brew install ripgrep
brew install libpq
brew install google-cloud-sdk

# Remove outdated versions from the cellar.
brew cleanup

###############################################################################
# Installs some nice native apps with Homebrew Cask                           #
###############################################################################

brew install --cask raycast
brew install --cask iterm2
brew install --cask claude
brew install --cask claude-code
brew install --cask visual-studio-code
brew install --cask cursor
brew install --cask docker-desktop
brew install --cask tableplus
brew install --cask google-chrome
brew install --cask arc
brew install --cask firefox
brew install --cask slack
brew install --cask figma
brew install --cask google-drive
brew install --cask obsidian
brew install --cask linear
brew install --cask spotify
brew install --cask notion
brew install --cask notion-calendar
brew install --cask todoist
brew install --cask tuple
brew install --cask font-meslo-lg-nerd-font

###############################################################################
# Github CLI extensions                                                       #
###############################################################################

gh extension install dlvhdr/gh-dash

###############################################################################
# Install tools from Yarn                                                     #
###############################################################################

yarn global add firebase-tools
yarn global add netlify-cli
yarn global add surge

###############################################################################
# Install software from the Mac App Store                                     #
###############################################################################

mas lucky "Gifski Convert videos to GIFs"

###############################################################################
# Install Oh My Zsh                                                           #
###############################################################################

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Symlink the files to ~
ln -sf ~/code/dotfiles/.zshrc ~/.zshrc
ln -sf ~/code/dotfiles/.zshrc.local ~/.zshrc.local
ln -sf ~/code/dotfiles/.gitignore ~/.gitignore
ln -sf ~/code/dotfiles/.gitconfig ~/.gitconfig

mkdir -p ~/.claude
ln -sf ~/code/dotfiles/CLAUDE.md ~/.claude/CLAUDE.md

mkdir -p "$HOME/Library/Application Support/lazygit"
ln -sf ~/code/dotfiles/lazygit-config.yml "$HOME/Library/Application Support/lazygit/config.yml"

mkdir -p "$HOME/Library/Application Support/iTerm2/DynamicProfiles"
ln -sf ~/code/dotfiles/iterm2-config.json "$HOME/Library/Application Support/iTerm2/DynamicProfiles/dotfiles.json"

mkdir -p ~/Screenshots

source ~/.zshrc