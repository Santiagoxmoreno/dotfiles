name=/tmp/scrot.png
scrot -m -o -F $name 
xclip -selection clipboard -t image/png -i $name 
