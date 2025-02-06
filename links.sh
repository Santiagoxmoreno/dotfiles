#home
ln -sf ~/dotfiles/.xinitrc ~/.xinitrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.fehbg ~/.fehbg

#.config
ln -sf ~/dotfiles/.config/picom.conf ~/.config/picom.conf
ln -sf ~/dotfiles/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/.config/micro/colorschemes/sangl.micro ~/.config/micro/colorschemes/sangl.micro
ln -sf ~/dotfiles/.config/feh/buttons ~/.config/feh/buttons
ln -sf ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish

#vm hooks
sudo ln -sf ~/dotfiles/hooks /etc/libvirt

#env
sudo ln -sf ~/dotfiles/environment /etc/environment

#lol
sudo ln -sf /bin/alacritty /bin/xterm
