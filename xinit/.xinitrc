[ -f ~/.xprofile ] && source ~/.xprofile
setxkbmap -layout pl -option ctrl:nocaps
exec sway
