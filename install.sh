#!/bin/bash
echo "Initializing installer..."

echo "Installing Dependencies & Programs..."
sudo dnf -y install feh conky picom scrot rofi imwheel xfce4-terminal zsh neovim tmux thunar gnome-disks gnome-control-center gnome-software neofetch flameshot

echo "Making Directories and Copying Config Files..."
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Pictures ~/Pictures/Wallpapers/
mkdir ~/.config/i3 
mkdir ~/.config/i3status

cp -r ~/dotfiles/wallpapers/* ~/Pictures/Wallpapers/
cp -r ~/dotfiles/i3/* ~/.config/i3/
cp -r ~/dotfiles/i3status/* ~/.config/i3status/
cp -r ~/dotfiles/tmux/.tmux.conf  ~/
cp -r ~/dotfiles/vim/.vimrc ~/

#ZSH/Oh-My-Zsh
echo "Getting shell and setting to ZSH..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

#AstroVim
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync

echo "Grabbing Obsidian and Configuring AppImageLauncher..."
cd ~/Downloads
wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm
dnf install -y ./appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm

echo "Adjust Scrolling..."
bash <(curl -s http://www.nicknorton.net/mousewheel.sh)
chmod +x mousewheel.sh

./mousewheel.sh

echo "Generating SSH keys..."
cd ~/
ssh-keygen -t ed25519 -C "emailhere.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

echo "Add the key above to your Github profile to enable git remote"




