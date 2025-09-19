#!/bin/env bash

pkg update && pkg upgrade -y &&
pkg install mandoc &&
pkg install which mlocate nodejs-lts lua51* luarocks stylua python ruby dart cmake ninja clang rust ripgrep fzf fd curl ncurses-utils git lazygit neovim fastfetch
gem update
gem install neovim
pip install pynvim
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
