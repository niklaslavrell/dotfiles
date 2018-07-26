# Niklas dotfiles

My OSX dotfiles

## Overview of files

#### shell environment
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### manual run
* `setup-a-new-machine.sh` - random apps i need installed
* `.osx` - run on a fresh osx setup
* `brew.sh` & `brew-cask.sh` - homebrew initialization
* `npm.sh`- npm initialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline

### private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

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
