# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fishy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# export TERM="xterm-256color"
# source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/.go
export PATH=$PATH:/opt/android-sdk/tools:/opt/android-sdk/build-tools/19.0.1:/opt/android-sdk/platform-tools

alias webserver="python -m http.server"

export PATH=$PATH:./node_modules/.bin:$HOME/.node_modules/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export npm_config_prefix=~/.node_modules

export GPG_TTY=$(tty)
export EDITOR=/usr/bin/emacs
export WINIT_X11_SCALE_FACTOR=1

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

