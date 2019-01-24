#!/usr/bin/env zsh

### IMPORTANT: THE FOLLOWING MUST ALREADY BE INSTALLED
### - ZSH
### - Oh My ZSH
### - colorls
### - thefuck
### - pyenv
### - poetry
### - Rust/Cargo
### - The ZSH plugins listed in .zsh_config/.oh-my-zsh_plugins
### - The ZSH themes listed in .zsh_config/.oh-my-zsh_theme
### - Probably some other stuff I'm forgetting at the moment or 
###   forgot to update here when I modified the files

# exit if any command files
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"

# Perform a backup of the files we're going to link
if [ -f $HOME/.zshrc ]; then
    mv $HOME/.zshrc $HOME/.zshrc_presep
fi

if [ -e $HOME/.zsh_config ]; then
    mv $HOME/.zsh_config $HOME/.zsh_config_presep
fi

# Link the zsh config files
ln -s $SCRIPT_DIR/.zsh_config $HOME/.zsh_config
ln -s $SCRIPT_DIR/.zshrc $HOME/.zshrc

# finally, re-source
source $HOME/.zshrc