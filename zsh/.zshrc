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

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/.go
export PATH=$PATH:/opt/android-sdk/tools:/opt/android-sdk/build-tools/19.0.1:/opt/android-sdk/platform-tools

alias webserver="python -m http.server"

export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

function kpods() {
    kubectl get pods --namespace=$1 --context=${2:-staging-cluster}
}

function kshell() {
    kubectl exec -it $2 -c $3 --namespace=$1 --context=${4:-staging-cluster} -- env TERM=$TERM COLUMNS=$COLUMNS LINES=$LINES bash -il
}
