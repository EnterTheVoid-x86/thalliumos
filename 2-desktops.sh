#!/bin/bash

# EnderOS Desktop Environment chooser
echo -e "\e[35mEnderOS\e[0m has the option to install a desktop environment to your liking."
echo "In the next screen, please choose a desktop to install."
echo "Press any key to continue..."
read confirm
echo "------==============------"
echo "The available desktops are:"
echo "1. Cinnamon"
echo "2. KDE Plasma"
echo "3. GNOME"
echo "4. XFCE"
echo "5. LXqt"
echo "6. Budgie"
echo "------==============------"
read desktopchoice
if [[ $desktopchoice == "1" ]]; then
	echo "Installing Cinnamon..."
	sudo pacman -S cinnamon
elif [[ $desktopchoice == "2" ]]; then
	echo "Installing KDE Plasma..."
	sudo pacman -S xorg plasma plasma-wayland-session plasma-meta kde-applications
elif [[ $desktopchoice == "3" ]]; then
	echo "Installing GNOME..."
	sudo pacman -S gnome gnome-extras
elif [[ $desktopchoice == "4" ]]; then
	echo "Installing XFCE..."
	sudo pacman -S xfce4 xfce4-goodies
elif [[ $desktopchoice == "5" ]]; then
	echo "Installing LXqt..."
	sudo pacman -S xorg lxqt breeze-icons nm-tray
elif [[ $desktopchoice == "6" ]]; then
	echo "Installing Budgie..."
	sudo pacman -S budgie-desktop budgie-desktop-view budgie-screensaver budgie-extras
	yay -S budgie-control-center
else
	echo "Invalid option!"
	bash 2-desktops.sh
fi
bash 3-kernels.sh
