# dotfiles

Forked from [paulirish](https://github.com/paulirish/dotfiles) and [mathiasbynens](https://github.com/mathiasbynens/dotfiles), big thanks!

## Installation

### Using Git and the bootstrap script

```bash
git clone https://github.com/lalle/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae:

```bash
./brew.sh
```

## Syntax highlighting

…is really important. even for these files.

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Sublime Text 2 Package Control](http://wbond.net/sublime_packages/package_control)
