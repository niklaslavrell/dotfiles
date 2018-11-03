# Niklas dotfiles

My OSX dotfiles

## Overview of files

#### shell environment

- `.aliases`
- `.bash_profile`
- `.bash_prompt`
- `.bashrc`
- `.exports`
- `.functions`
- `.extra` - not included, explained above

#### manual run

- `setup-a-new-machine.sh` - random apps i need installed
- `.osx` - run on a fresh osx setup
- `brew.sh` & `brew-cask.sh` - homebrew initialization
- `npm.sh`- npm initialization

#### git, brah

- `.git`
- `.gitattributes`
- `.gitconfig`
- `.gitignore`

- `.inputrc` - config for bash readline

### private config

Toss it into a file called `.extra` and do not commit to this repo. Something like this:

```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="<name>"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="<email>"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Install

### Bootstrap script

```bash
git clone https://github.com/lalle/dotfiles.git && cd dotfiles && source sync.sh
```

To update, `cd` into your local `dotfiles` repository and then

```bash
source sync.sh
```

### For a new Mac

For a new machine setup

```bash
source setup-a-new-machine.sh
```

#### OS X defaults

```bash
./.osx
```

## Thanks

Thanks to [paulirish](https://github.com/paulirish/dotfiles) and [mathiasbynens](https://github.com/mathiasbynens/dotfiles)!
