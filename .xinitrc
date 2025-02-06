#!/bin/bash
setxkbmap -layout latam #keyboard layout
xinput set-prop "Corsair Corsair Gaming HARPOON RGB Mouse" "libinput Accel Profile Enabled" 0 1 0 #disable accel
xinput set-prop "Corsair Corsair Gaming HARPOON RGB Mouse" "libinput Accel Speed" -0.75 #sensitivity 

export SHELL=/usr/bin/fish

slstatus & #status bar
~/.fehbg & #background
picom & #compositor
CM_SELECTIONS=clipboard clipmenud & #clipboard manager
dunst & #notification daemon
/usr/lib/xdg-desktop-portal-gtk & #desktop portal
redshift -l -35:-58 & #night light

exec dwm
