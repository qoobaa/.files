function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

reset='\e[0m'
user='\e[0;91m'
at='\e[0;93m'
host='\e[0;92m'
path='\e[0;94m'
prompt='\e[0;32m'

export PS1="\[$user\]\u\[$at\]@\[$host\h\] \[$path\]\w\$(parse_git_branch) \[$prompt\]\$ $reset"
