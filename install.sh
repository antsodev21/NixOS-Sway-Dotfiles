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

#==PREPARA-FISH==#
fish << 'EOF'
# Instala el gestor de plugins fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Instala plugins adicionales
fisher install jorgebucaran/fisher
fisher install IlanCosman/tide@v6
EOF

# Avisa de la existencia de mis apps en AppImage
echo "### No olvides instalar las apps : Osu!, SKlauncher y Raspberry Pi Imager desde AppImage, ni tampoco olvides configurar tide para los temas del Prompt de fish ###"
