source ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc

# Load homeshick function and zsh completion.
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# Alias definitions
alias vi=vim
