# Niklas dotfiles

My MacOS dotfiles

## Install

Install tools, apps and symlinks

```zsh
cd ~/code && git clone git@github.com:niklaslavrell/dotfiles.git && cd dotfiles && source install.sh
```

Set MacOS settings

```zsh
./.macos
```

Add git credentials in a new file `.extra.gitconfig`, like:

```zsh
# Git credentials
[user]
    name = Name
    email = Email

# Specific Git credentials for some folders
[includeIf "gitdir:*/company/"]
    path = ~/code/dotfiles/.extra.company.gitconfig
```

## Files

- `.gitconfig` - git configurations
- `.gitignore` - global .gitignore settings
- `.macos` - macos settings
- `.zshrc` - zsh configurations
- `.extra.gitcofig` - extra git credentials excluded from repo
- `install.sh` - apps via homebrew and setup symlinks

## Thanks

Thanks to [paulirish](https://github.com/paulirish/dotfiles), [mathiasbynens](https://github.com/mathiasbynens/dotfiles) and [AntonNiklasson](https://github.com/AntonNiklasson/dotfiles) for inspiration.
