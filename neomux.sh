#!/bin/env bash

echo "  ----------------------------  "
echo ">> installing pkg dependencies <<"
echo "  ----------------------------  "
pkg update && pkg upgrade -y &&
pkg install mandoc &&
pkg install termux-api which mlocate nodejs-lts lua51* luajit lua-language-server wget luarocks stylua python ruby dart cmake ninja clang rust ripgrep fzf fd curl ncurses-utils git lazygit neovim fastfetch
echo "----------------------------"
echo ">> confirming clipboard <<"
echo "----------------------------"
command -v termux-clipboard-set
echo "----------------------------"
echo ">> ruby lsp, dap and etc <<"
echo "----------------------------"
gem update
gem install neovim ruby-lsp rubocop readapt
echo "----------------------------"
echo ">> python pynvim <<"
echo "----------------------------"
pip install pynvim
echo "----------------------------"
echo ">> lua luacheck <<"
echo "----------------------------"
luarocks install luacheck
echo "----------------------------"
echo ">> typescript language server <<"
echo ">> prettierd <<"
echo ">> bash language server <<"
echo "----------------------------"
npm install -g typescript-language-server
npm install -g @fsouza/prettierd
npm install -g bash-language-server
echo "----------------------------"
echo ">> compiling ast-grep <<"
echo "----------------------------"
cargo install ast-grep
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.profile
source ~/.profile
echo "----------------------------"
echo ">> applying nerd fonts <<"
echo "----------------------------"
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
getnf
echo "----------------------------"
echo ">> installing lazyvim <<"
echo "----------------------------"
# required
mv ~/.config/nvim{,.bak} &&
# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim &&
rm -rf ~/.config/nvim/.git &&
echo "----------------------------"
echo ">> TIME TO FLEX <<"
echo "----------------------------"
sleep 6
fastfetch
echo "----------------------------"
echo ">> installing .lua files <<"
echo "----------------------------"
mv ~/termazing/termux-rails-flutter/* ~/.config/nvim/lua/plugins/
echo "----------------------------"
echo ">> applying purplewave theme <<"
echo "----------------------------"
mv ~/.config/nvim/lua/plugins/colors.properties ~/.termux/colors.properties
termux-reload-settings
echo "----------------------------"
echo ">> cleaning gitclone folder <<"
echo "----------------------------"
#it delete useless artifacts remaining from the git clone
rm -rf $HOME/termazing/
echo "----------------------------"
echo ">> loading lazyvim headless <<"
echo "----------------------------"
nvim --headless -c 'Lazy! sync | qa'
echo "----------------------------"
echo ">> finished, starting neovim... <<"
echo "----------------------------"
nvim
