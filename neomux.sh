#!/bin/env bash

echo "  ----------------------------  "
echo ">> installing pkg dependencies <<"
echo "  ----------------------------  "
sleep 5
pkg update &&
  pkg upgrade -y &&
  pkg install mandoc &&
  pkg install build-essential termux-api which
pkg install mlocate nodejs-lts openssl
pkg install lua51* luajit lua-language-server
pkg install wget luarocks stylua lazygit
pkg install python ruby cmake ninja clang rust
pkg install ripgrep fzf fd curl tmux
pkg install tree-sitter tree-sitter-lua
pkg instal fastfetch shfmt shellcheck neovim
echo "----------------------------"
echo ">> confirming clipboard <<"
echo "----------------------------"
command -v termux-clipboard-set
sleep 5
echo "----------------------------"
echo ">> ruby lsp, dap and etc <<"
echo "----------------------------"
sleep 5
gem update
gem install rails bundler neovim
gem install ruby-lsp rubocop readapt
gem install erb_lint slim_lint haml_lint
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
echo ">> compiling cargo dependencies <<"
echo "----------------------------"
sleep 5
cargo install ast-grep
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
echo ">> FLEXING 💪 <<"
echo "----------------------------"
fastfetch
echo "----------------------------"
echo ">> installing .lua files <<"
echo "----------------------------"
sleep 7
mv ~/termazing/tx-rails/* ~/.config/nvim/lua/plugins/
echo "----------------------------"
echo ">> applying purplewave theme <<"
echo ">> fixing config files path <<"
echo "----------------------------"
mkdir ~/.termux/
mv ~/.config/nvim/lua/plugins/colors.properties ~/.termux/colors.properties
mv ~/.config/nvim/lua/plugins/tmux.conf ~/.tmux.conf
mv ~/.config/nvim/lua/plugins/profile ~/.profile
mkdir ~/.termux/font/
mv ~.config/nvim/lua/plugins/jbnerdxbold.ttf ~/.termux/font/jbnerdxbold.ttf
sleep 7
termux-reload-settings
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
