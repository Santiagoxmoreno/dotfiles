#home
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.fehbg ~/.fehbg
#ln -sf ~/dotfiles/.emacs.d/init.el ~/.emacs.d/init.el

#.config
ln -sf ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/dotfiles/.config/picom.conf ~/.config/picom.conf
ln -sf ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

#vm hooks
sudo ln -sf ~/dotfiles/hooks /etc/libvirt

#env
sudo ln -sf ~/dotfiles/environment /etc/environment
