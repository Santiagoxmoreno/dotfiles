#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi="nvim"
alias vim="nvim"
PS1='[\u@\h \W]\$ '

alias hyprcfg="micro ~/.config/hypr/hyprland.conf"

alias dwmcfg="cd ~/dwm/dwm/; micro config.h"
alias gitpush="read -p 'Commit name: ' commitname; git add .; git commit -m \"\$commitname\"; git push"
alias startvm="sudo virsh start win10"
