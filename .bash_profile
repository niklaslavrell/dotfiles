#
# Loads the dotfiles ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
# and initializes some nice dependencies
#

for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/Developer/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# java home
#export JAVA_HOME=$(/usr/libexec/java_home)
# android
#export ANDROID_HOME=/Users/niklaslavrell/Library/Android/sdk
#export PATH=$PATH:/Users/niklaslavrell/Library/Android/sdk/platform-tools/
#export PATH=$PATH:$ANDROID_HOME/tools/

# append history for each tab instead of overwriting.
shopt -s histappend

##
## Completion…
##

#Add the following to your ~/.bash_profile:
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
