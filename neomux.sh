#!/bin/env bash

pkg update && pkg upgrade -y &&
pkg install mandoc &&
pkg install which mlocate nodejs-lts lua51* luarocks stylua python ruby dart cmake ninja clang rust ripgrep fzf fd curl ncurses-utils git lazygit neovim fastfetch
gem update
gem install neovim
pip install pynvim
cargo install ast-grep
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
getnf
# required
mv ~/.config/nvim{,.bak} &&

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim &&
rm -rf ~/.config/nvim/.git &&
echo "HORA DO SHOW, LAZYVRUUUUUUUUUUUUM..."
sleep 3
nvim
