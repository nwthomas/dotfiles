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

# Various terminal commands
alias c="clear"
alias edit="nano ~/.zshrc"

# Git terminal commands
alias g="git"
alias ga="g add -A"
alias gc="g commit -m"
alias gac="ga && gc"
alias gr="g reset --hard"
alias gp="g pull"
alias gs="g status"
alias gbd="g branch -D"
alias gclean='git branch | grep -v "main" | xargs git branch -D'

# Python terminal alias for legacy commands
alias python='python3'

# Commands for starting/ending Wireguard VPN
alias wgup="sudo wg-quick up ~/vpn/nathan-macbook.conf"
alias wgdown="sudo wg-quick down ~/vpn/nathan-macbook.conf"

# SSH into various machines
alias hermes="ssh nathanthomas@hermes.local"
alias red1="ssh nathanthomas@red1.local"
alias red2="ssh nathanthomas@red2.local"
alias red3="ssh nathanthomas@red3.local"
alias red4="ssh nathanthomas@red4.local"
alias red5="ssh nathanthomas@red5.local"
alias red6="ssh nathanthomas@red6.local"

# Check gpu status (perf, CUDA, etc.)
alias gpu="nvidia-smi"

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.poetry/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/nathanthomas/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endalias

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"