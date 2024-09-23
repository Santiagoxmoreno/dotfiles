#!/bin/bash
setxkbmap -layout latam #keyboard layout
xinput set-prop "9" "libinput Accel Profile Enabled" 0 1 0 #disable accel
xinput set-prop "9" "libinput Accel Speed" -0.75 #sensitivity 

#GTK_THEME="Adwaita:dark"
#QT_QPA_PLATFORMTHEME="qt5ct"

slstatus & #status bar
~/.fehbg & #background
picom & #compositor
clipmenud & #clipboard manager
dunst & #notification daemon

exec dwm
