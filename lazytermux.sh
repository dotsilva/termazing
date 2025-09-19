#!/bin/env bash

pkg update && pkg upgrade -y
pkg install nodejs-lts
pkg install lua51*
pkg install luarocks
pkg install stylua
pkg install python3.13
pkg install ruby
pkg install dart
gem update
gem install neovim
pip install pynvim
pkg install cmake ninja clang rust ripgrep fzf fd
pkg install curl ncurses-utils
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
