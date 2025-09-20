#!/bin/env bash

pkg update && pkg upgrade -y &&
pkg install mandoc &&
pkg install termux-api which mlocate nodejs-lts lua51* luajit lua-language-server wget luarocks stylua python ruby dart cmake ninja clang rust ripgrep fzf fd curl ncurses-utils git lazygit neovim fastfetch
command -v termux-clipboard-set 
gem update
gem install neovim ruby-lsp rubocop readapt
pip install pynvim
luarocks install luacheck
npm install -g typescript-language-server
npm install -g @fsouza/prettierd
npm install -g bash-language-server


cargo install ast-grep
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.profile
source ~/.profile
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
echo "SHOW TIME, LAZYVRUUUUUUUUUUUUM..."
sleep 3
command -v ast-grep
ast-grep --version
sleep 3
fastfetch
mv ~/termazing/termux-rails-flutter/* ~/.config/nvim/lua/plugins/
mv ~/.config/nvim/lua/plugins/colors.properties ~/.termux/colors.properties
termux-reload-settings
#it delete useless artifacts remaining from the git clone
rm -rf $HOME/termazing/

nvim --headless -c 'Lazy! sync | qa'
nvim
