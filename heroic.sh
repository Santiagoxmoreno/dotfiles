#!/bin/sh
rm ~/.config/heroic
ln -sf ~/.config/heroic$1 ~/.config/heroic
/opt/Heroic/heroic
