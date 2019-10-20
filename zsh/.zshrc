## Everything how lives in Sep's ZSH Config
if [ -f $HOME/.zsh_config/.zshrc ]; then
    source $HOME/.zsh_config/.zshrc
else
    echo "Unable to load Sep's ZSH configuration."
fi
