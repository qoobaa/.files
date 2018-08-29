[ -f ~/.xprofile ] && source ~/.xprofile
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
exec i3
