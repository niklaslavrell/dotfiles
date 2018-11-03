#
# Installs cool command-line tools using Homebrew
#

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Developer tools and frameworks
brew install tree
brew install git
brew install node
brew install python
brew install composer
#brew install gradle
#brew install ffmpeg
#brew install ffmpeg --with-libvpx
brew install mongodb
brew install docker
brew install docker-machine
brew install docker-compose
#brew install heroku

# Remove outdated versions from the cellar.
brew cleanup
