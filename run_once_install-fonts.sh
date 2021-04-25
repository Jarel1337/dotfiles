#!/bin/sh
output="${XDG_DATA_HOME:-$HOME/.local/share}"/fonts
mkdir -p "$output"
umask 377
curl -fsLS https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Bold-Italic/complete/Sauce%20Code%20Pro%20Bold%20Italic%20Nerd%20Font%20Complete.ttf -o "$output/Sauce Code Pro Bold Italic Nerd Font Complete.ttf"
curl -fsLS https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Bold/complete/Sauce%20Code%20Pro%20Bold%20Nerd%20Font%20Complete.ttf -o "$output/Sauce Code Pro Bold Nerd Font Complete.ttf"
curl -fsLS https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Italic/complete/Sauce%20Code%20Pro%20Italic%20Nerd%20Font%20Complete.ttf -o "$output/Sauce Code Pro Italic Nerd Font Complete.ttf"
curl -fsLS https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf -o "$output/Sauce Code Pro Nerd Font Complete.ttf"

gsettings set org.gnome.desktop.interface monospace-font-name 'SauceCodePro Nerd Font 10' || echo 'GSettings was unable to run, are you not running gnome?'
