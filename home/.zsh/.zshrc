source ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc

# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# Load homeshick function and zsh completion.
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

unsetopt correct                                 # disable auto correct
setopt TRANSIENT_RPROMPT

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
alias mc='MC_SKIN=$HOME/.config/mc/solarized.ini mc'
alias notes='vim -c RecentNotes'
# export LESS=' -R'                                # syntax highlighting for less

# Golang
export GOPATH=/src/gocode
export PATH="$PATH:$GOPATH/bin"

foreground-vi() {
  fg %vi
}
zle -N foreground-vi
bindkey '^Z' foreground-vi

# Who doesn't want home and end to work?
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Docker Settings
export DOCKER_CERT_PATH=/Users/bpruessm/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

function start-redis() {
    docker run -v /src/docker/redis:/data -p 6379:6379 --name redis -d redis redis-server --appendonly yes 
}

function setWindowTitle() {
    echo '\033k' $* '\033\\'
}
