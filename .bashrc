#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi="nvim"
alias vim="nvim"
PS1='[\u@\h \W]\$ '

alias hyprcfg="micro ~/.config/hypr/hyprland.conf"

alias dwmcfg="cd ~/dwm/dwm/; micro config.h"
alias gitpush="read -p 'Commit name: ' commitname; git add .; git commit -m \"\$commitname\"; git push"
alias startvm="sudo virsh start win10"
