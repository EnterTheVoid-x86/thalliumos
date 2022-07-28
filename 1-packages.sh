#!/bin/bash

#EnderOS Packages installer
echo "Prepare for takeoff!"
sudo pacman -Syu --noconfirm --needed base-devel fish git wget pipewire sddm networkmanager nautilus nautilus-share gvfs-smb samba wireplumber pipewire-alsa pipewire-pulse
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sudo rm /etc/systemd/system/display-manager.service
sudo systemctl enable sddm
sudo systemctl enable NetworkManager
systemctl --user enable pipewire.service
systemctl --user start pipewire.service
systemctl --user enable pipewire-pulse.service
systemctl --user start pipewire-pulse.service
chsh -s /usr/bin/fish
sudo ln -s /usr/lib/systemd/system/sddm.service /etc/systemd/system/display-manager.service
yay -S ungoogled-chromium
bash 2-desktops.sh
