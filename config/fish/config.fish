if status is-interactive

# Establece una serie de alias utiles
alias rebuild="sudo nixos-rebuild switch"
alias nixconfig="sudo nano /etc/nixos/configuration.nix"

# Establece la variable de bienvenida con nada
set -U fish_greeting ""

# Autoarranque de Katifetch
clear && katifetch

end

