export EDITOR="code --wait"
export GOBIN=$HOME/workspace/go/bin
export GOPATH=$HOME/workspace/go
export NODE_PATH='/usr/local/lib/node_modules'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export UPDATE_ZSH_DAYS=13
export VISUAL="/usr/bin/vim"
export ZSH="/Users/nathanthomas/.oh-my-zsh"

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"

plugins=(colored-man-pages colorize command-not-found git)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias edit="nano ~/.zshrc"
alias g="git"
alias ga="g add -A"
alias gc="g commit -m"
alias gac="ga && gc"
alias gr="g reset --hard"
alias gp="g pull"
alias gs="g status"
alias gbd="g branch -D"
alias work="cd ~/workspace"
alias python='python3'
alias gclean='git branch | grep -v "main" | xargs git branch -D'
