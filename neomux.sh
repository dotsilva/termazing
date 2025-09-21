#!/bin/env bash

echo "  ----------------------------  "
echo ">> installing pkg dependencies <<"
echo "  ----------------------------  "
sleep 5
pkg update && pkg upgrade -y &&
  pkg install mandoc &&
  pkg install termux-api which mlocate nodejs-lts lua51* luajit lua-language-server wget luarocks stylua python ruby cmake ninja clang rust ripgrep fzf fd curl ncurses-utils git lazygit neovim fastfetch
echo "----------------------------"
echo ">> confirming clipboard <<"
echo "----------------------------"
sleep 5
command -v termux-clipboard-set
echo "----------------------------"
echo ">> ruby lsp, dap and etc <<"
echo "----------------------------"
sleep 5
gem update
gem install neovim ruby-lsp rubocop readapt
echo "----------------------------"
echo ">> python pynvim <<"
echo "----------------------------"
sleep 5
pip install pynvim
echo "----------------------------"
echo ">> lua luacheck <<"
echo "----------------------------"
sleep 5
luarocks install luacheck
echo "----------------------------"
echo ">> installing npm dependencies <<"
echo "----------------------------"
sleep 5
npm install -g typescript-language-server
npm install -g @fsouza/prettierd
npm install -g bash-language-server
npm install -g neovim
npm install -g typescript
npm install -g eslint_d
echo "----------------------------"
echo ">> compiling ast-grep <<"
echo "----------------------------"
sleep 5
cargo install ast-grep
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >>~/.profile
source ~/.profile
echo "----------------------------"
echo ">> applying nerd fonts <<"
echo "----------------------------"
sleep 5
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
getnf
echo "----------------------------"
echo ">> installing lazyvim <<"
echo "----------------------------"
sleep 5
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
sleep 5
fastfetch
echo "----------------------------"
echo ">> installing .lua files <<"
echo "----------------------------"
sleep 5
mv ~/termazing/termux-rails-flutter/* ~/.config/nvim/lua/plugins/
echo "----------------------------"
echo ">> applying purplewave theme <<"
echo "----------------------------"
sleep 5
mv ~/.config/nvim/lua/plugins/colors.properties ~/.termux/colors.properties
termux-reload-settings
echo "----------------------------"
echo ">> cleaning gitclone folder <<"
echo "----------------------------"
sleep 5
#it delete useless artifacts remaining from the git clone
rm -rf $HOME/termazing/
echo "----------------------------"
echo ">> loading lazyvim headless <<"
echo "----------------------------"
sleep 5
nvim --headless -c 'Lazy! sync | qa'
echo "----------------------------"
echo ">> finished, starting neovim... <<"
echo "----------------------------"
sleep 5
nvim
