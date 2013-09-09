source ~/.bash/alias.bash
source ~/.bash/editor.bash
source ~/.bash/completion/git.bash
source ~/.bash/completion/rake.bash
source ~/.bash/path.bash
source ~/.bash/prompt.bash
source ~/.bash/rvm.bash
source ~/.bash/nvm.bash

# make C-s work properly
stty stop undef
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
