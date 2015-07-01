source ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc

# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# Load homeshick function and zsh completion.
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

unsetopt correct                                 # disable auto correct

# Fix locale to english
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vi                                 # Specify vi as editor

# Alias definitions
alias vi=vim
alias cls=clear
alias grep='grep --color=auto'
alias more='/usr/share/vim/vim73/macros/less.sh'
alias mdfind='mdfind -onlyin .'

# export LESS=' -R'                                # syntax highlighting for less

# Golang
export GOPATH=/src/gocode
export PATH="$PATH:$GOPATH/bin"

# Who doesn't want home and end to work?
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
