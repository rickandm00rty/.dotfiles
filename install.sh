#!/bin/bash


echo "Installing Dependencies & Programs...Configuring Files...."
sudo dnf -y install feh conky picom polybar scrot rofi imwheel xfce4-terminal zsh neovim tmux thunar gnome-control-center gnome-software neofetch

mkdir ~/.config/i3 ~/.config/nvim
mkdir ~/.config/i3/polybar

cp -r ~/dotfiles/Xorg/ ~/
cp -r ~/dotfiles/i3/* ~/.config/i3/
cp -r ~/dotfiles/nvim/* ~/.config/nvim/
cp -r ~/dotfiles/tmux/.tmux.conf  ~/
cp -r ~/dotfiles/vim/.vimrc ~/
cp -r ~/dotfiles/ZSH/.zshrc ~/
cp -r ~/dotfiles/polybar ~/.config/polybar/

# Dependencies
echo "Adding MS Edge & Steam RPM's..."

#EDGE
sudo rpm —import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager —add-repo https://packages.microsoft.com/yumrepos/edge
sudo dnf update —refresh
sudo dnf install -y microsoft-edge-stable

# STEAM
sudo dnf install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-35.noarch.rpm
sudo dnf install -y steam

#ZSH/Oh-My-Zsh
echo "Getting that cool shell stuff and setting default to ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

echo "Grabbing Obsidian .appImage and AppImageLauncher"
#wget “url” and dependencies

