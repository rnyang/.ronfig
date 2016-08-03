# .bashrc

# Additions to path
source ~/.paths

# Aliases to machine-specific paths
source ~/.aliases

# User specific aliases and functions
alias ..='cd ..'
alias ...='cd ../..'
alias dbox='cd ~/Dropbox'

# Use bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# colors
export TERM=xterm-256-color

# Use thefuck
eval "$(thefuck --alias)"
