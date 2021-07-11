#!/usr/bin/env bash
echo "Instalando todo los packages que hacen falta para ser feliz!!!"
# git
sudo pacman -S git-core
# gcc make ... etc
sudo pacman -S base-devel
# wallpapper
sudo pacman -S feh
# conky (visualizacion del sistema)
sudo pacman -S conky
# visor de programas
sudo pacman -S rofi
# visualizacion de imagenes
sudo pacman -S viewnior
# cmake
sudo pacman -S cmake
# alternativa a bash
sudo pacman -S zsh
# para bajar cosas de internet desde consola
sudo pacman -S wget
# para bajar cosas de internet desde consola
sudo pacman -S curl
# fonts
sudo pacman -S powerline-fonts
# fonts
sudo pacman -S awesome-terminal-fonts
# visualizacion de pdfs
sudo pacman -S zathura
sudo pacman -S zathura-pdf-mupdf
sudo pacman -S zathura-djvu
sudo pacman -S zathura-ps
sudo pacman -S zathura-cb
# para escuchar musica desde la consola
sudo pacman -S cmus
# para editar imagenes
sudo pacman -S inkscape
# para multiplexar consolas y mas...
sudo pacman -S tmux
# una alternativa mas rapida a grep
sudo pacman -S the_silver_searcher
# utilidades para files
sudo pacman -S file-roller p7zip zip unzip unrar
# console file mannager
sudo pacman -S ranger
# clipboard mannager
sudo pacman -S xclip
# ruby
sudo pacman -S ruby
# nodejs
sudo pacman -S nodejs
# npm
sudo pacman -S npm
# clang
sudo pacman -S clang
# para que monte los usb
sudo pacman -S gvfs
sudo pacman -S gvfs-nfs
# para que reconozca el celular y el ereader
sudo pacman -S gvfs-mtp
# para el audio
sudo pacman -S alsa
sudo pacman -S alsa-utils
sudo pacman -S alsa-plugins
sudo pacman -S alsa-tools

sudo pacman -S pulseaudio
sudo pacman -S pulseaudio-alsa
sudo pacman -S pulsemixer
# ctags
sudo pacman -S ctags
# man pages!!!
sudo pacman -S man-db
