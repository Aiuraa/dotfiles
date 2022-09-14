#
# ~/.bashrc config
#
# It's gore, but i love it.

DisplayShell() {
    PF_ASCII="arch" pfetch
    PS1='\[\e[49;38;5;74;1m\]\u\[\e[49;39m\]@\[\e[49;38;5;74m\]\h:\[\e[0m\]\w> '
}

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias clear='clear && PF_ASCII="arch" pfetch'

[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

DisplayShell
