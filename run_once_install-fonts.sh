#!/bin/sh
fonts="${XDG_DATA_HOME:-$HOME/.local/share}"/fonts
mkdir -p "$fonts"
curl -fsLS https://github.com/microsoft/cascadia-code/releases/download/v2106.17/CascadiaCode-2106.17.zip -o /tmp/fonts.zip
umask 377
unzip -p /tmp/fonts.zip ttf/CascadiaCode.ttf>"$fonts/CascadiaCode.ttf"
rm /tmp/fonts.zip

gsettings set org.gnome.desktop.interface monospace-font-name 'Cascadia Code 10' || echo 'GSettings was unable to run, are you not running gnome?'
