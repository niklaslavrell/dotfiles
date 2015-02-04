# Niklas dotfiles

My OSX dotfiles

## Installation

### Bootstrap script

```bash
git clone https://github.com/lalle/dotfiles.git && cd dotfiles && source sync.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source sync.sh
```

### For a new Mac

#### OS X defaults

```bash
./.osx
```

#### brew, brew cask & npm

```bash
source brew.sh && source brew-cask.sh && source npm.sh
```

## Thanks

Thanks to [paulirish](https://github.com/paulirish/dotfiles) and [mathiasbynens](https://github.com/mathiasbynens/dotfiles)!