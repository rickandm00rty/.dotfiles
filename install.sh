#!/bin/bash


echo "Installing Dependencies & Programs...Configuring Files...."
sudo dnf -y install feh conky picom scrot rofi imwheel xfce4-terminal zsh neovim tmux thunar gnome-control-center gnome-software neofetch

echo "Making Directories and Copying Binaries"
mkdir ~/Downloads
mkdir ~/Pictures ~/Pictures/Wallpapers/
mkdir ~/.config/i3 
mkdir ~/.config/i3status
mkdir ~/.config/nvim
mkdir ~/.config/i3status

cp ~/dotfiles/nanotubes.jpeg ~/Pictures/Wallpapers/
cp -r ~/dotfiles/i3/* ~/.config/i3/
cp -r ~/dotfiles/i3status/* ~/.config/i3status/
cp -r ~/dotfiles/nvim/* ~/.config/nvim/
cp -r ~/dotfiles/tmux/.tmux.conf  ~/
cp -r ~/dotfiles/vim/.vimrc ~/
cp -r ~/dotfiles/ZSH/.zshrc ~/

#EDGE
echo "Adding MS Edge & Steam RPM's..."

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
sudo dnf update --refresh
sudo dnf install -y microsoft-edge-stable

#STEAM
sudo dnf install -y steam

#ZSH/Oh-My-Zsh
echo "Getting that cool shell stuff and setting default to ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

echo "Grabbing Obsidian and Configuring AppImageLauncher"
cd ~/Downloads
wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm
dnf install -y ./appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm


