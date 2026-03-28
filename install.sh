#!/usr/bin/bash

# Copying configuration files into /home
cp -r -i ./home/* ~/

# Installing software
sudo pacman -Syu hyprland xdg-desktop-portal-hyprland hyprpolkitagent hyprpaper mako fuzzel thunar waybar cliphist mousepad greetd-tuigreet wlogout grimblast-git hyprlock hypridle nwg-look materia-gtk-theme qt6ct kvantum kvantum-theme-materia breeze-icons playerctl network-manager-applet

# Installing some optional dependencies
sudo pacman -S --asdeps uwsm catfish gvfs tumbler thunar-volman thunar-archive-plugin thunar-media-tags-plugin file-roller otf-font-awesome hyprpicker

# Annoying GTK theming junk
ln -s /usr/share/themes/Materia-dark/gtk-4.0/gtk.css ~/.config/gtk-4.0/
ln -s /usr/share/themes/Materia-dark/gtk-4.0/assets/ ~/.config/gtk-4.0/
gsettings set org.gnome.desktop.interface gtk-theme "Materia-dark"
gsettings set org.gnome.desktop.interface icon-theme "breeze-dark"

# Configuring and enabling greetd
sudo cp ./greetd/config.toml /etc/greetd/config.toml
systemctl enable greetd