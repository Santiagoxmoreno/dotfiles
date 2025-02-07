alias vi="nvim"
alias vim="nvim"
alias hyprcfg="micro ~/.config/hypr/hyprland.conf"
alias dwmcfg="cd ~/dwm/dwm/; micro config.h"
alias startvm="sudo virsh start win10"
alias fixres="xrandr --output HDMI-0 --auto"
alias copy="xclip -i -selection clipboard"
alias play="mpv (xclip -o -selection clipboard)"
alias ssh="env TERM=xterm-256color ssh"

function gitpush
    read -P "Commit name: " commitname
    git add .
    git commit -m "$commitname"
    git push
end

function fixinput
    setxkbmap -layout latam
    xinput set-prop "Corsair Corsair Gaming HARPOON RGB Mouse" "libinput Accel Profile Enabled" 0 1 0
    xinput set-prop "Corsair Corsair Gaming HARPOON RGB Mouse" "libinput Accel Speed" -0.75
end

set -x MICRO_TRUECOLOR 1
set -U fish_prompt_pwd_dir_length 0
