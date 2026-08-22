#!/bin/bash
cat ascii_art.txt

#==COPIA-DE-DOTFILES==#
# Primero se copian los archivos de .config
mkdir ~/.config
cp -r config/* ~/.config/

# Cambia los Permisos de Ejecucion en un Script de rofi
sudo chmod +x ~/.config/rofi/script/power-profiles.sh

# Copia la configuracion de NixOS
sudo cp configuration.nix /etc/nixos/configuration.nix

# Aplicacion de la Config
sudo nixos-rebuild switch

#==PREPARA-BASH==#
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Copia del .bashrc
cp .bashrc ~/
