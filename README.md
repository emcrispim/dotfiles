# dotfiles
linux config files 
This is ment for Debian 13 trisxie 

----
ghosty 

Instalation via deb repo:
https://debian.griffo.io/io
run fonts required:
setup-fonts.sh
apply dotfilesd



----
xkb - custom layout for ANSI-US keyboard to PT-pt

This symlink allows gnome (maybe others) to show layout map in keyboard settings
sudo ln -s ~/.config/xkb/symbols/ptus /usr/share/X11/xkb/symbols

More detailed information
https://codeaffen.org/2023/09/16/custom-keyboard-layouts-with-xkb/

---
LazyVim

Install latest neovim from github (installed with AppImage)
for user install move to ~/bin (.profile already includes the PATH for the directory)
sudo apt install -y git curl ripgrep fd-find build-essential xclip
include .config/nvim files


this document is under development 
