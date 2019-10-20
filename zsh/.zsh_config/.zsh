##########################
# Main Entry point for
# Sep's ZSH configuration
##########################

# Add zfunc to the fpath

fpath+=${HOME}/.zsh_config/.zfunc

# Exports and Aliases
source "${HOME}"/.zsh_config/.exports_aliases

# Disable sharing ZSH terminal history between tabs/sessions
unsetopt inc_append_history
unsetopt share_history

# Source Oh My ZSH Configurations
source "${HOME}/.zsh_config/.oh-my-zsh_plugin_config"
source "${HOME}/.zsh_config/.oh-my-zsh_theme"

# Installers place things here for zsh
if [ -f $HOME/.zprofile ]; then
    source "${HOME}/.zprofile"
fi

# And finally, source other envs
source "${HOME}/.zsh_config/.other_sources"
