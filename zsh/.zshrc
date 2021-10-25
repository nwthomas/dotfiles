export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/nathanthomas/.oh-my-zsh"
export UPDATE_ZSH_DAYS=13
export GOPATH=$HOME/workspace/go
export GOBIN=$HOME/workspace/go/bin
export NODE_PATH='/usr/local/lib/node_modules'

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"

plugins=(colored-man-pages colorize command-not-found git)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias edit="nano ~/.zshrc"
alias gac="git commit -a -m"
alias python='python3'
