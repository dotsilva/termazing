#!/bin/env bash

echo "  ----------------------------  "
echo ">> installing pkg dependencies <<"
echo "  ----------------------------  "
pkg update
yes | pkg upgrade &&
yes | pkg install mandoc &&
  yes | pkg install build-essential termux-api which \
    mlocate nodejs-lts openssl \
    lua51 luajit lua-language-server \
    libxml2 libxslt htop \
    wget luarocks stylua lazygit \
    python ruby cmake ninja clang rust \
    ripgrep fzf fd curl tmux ncurses-utils \
    tree-sitter tree-sitter-lua \
    fastfetch shfmt shellcheck binutils neovim

echo "----------------------------"
echo ">> applying .files, font and theme <<"
echo "----------------------------"
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash

#getnf

cp -r ~/termazing/tx-rails/ash.properties ~/.termux/colors.properties
cp -r ~/termazing/tx-rails/tmux.conf ~/.tmux.conf
cp -r ~/termazing/tx-rails/profile ~/.profile
termux-reload-settings

echo "----------------------------"
echo ">> FLEXING 💪 <<"
echo "----------------------------"
sleep 3
fastfetch

echo "----------------------------"
echo ">> confirming clipboard <<"
echo "----------------------------"
command -v termux-clipboard-set

echo "----------------------------"
echo ">> ruby lsp, dap and etc <<"
echo ">> building nokogiri gem <<"
echo "----------------------------"
gem install nokogiri -- --use-system-libraries &&
  gem install rails bundler neovim erb-formatter \
    ruby-lsp rubocop readapt erb_lint slim_lint \
    haml_lint

echo "----------------------------"
echo ">> lua luacheck <<"
echo "----------------------------"
luarocks install luacheck

echo "----------------------------"
echo ">> installing npm dependencies <<"
echo "----------------------------"
npm install -g typescript-language-server \
  @fsouza/prettierd bash-language-server \
  neovim typescript eslint_d

echo "----------------------------"
echo ">> compiling cargo dependencies <<"
echo "----------------------------"
cargo install ast-grep

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
  rm -rf ~/.config/nvim/.git

echo "----------------------------"
echo ">> moving .lua files <<"
echo "----------------------------"
cp -r ~/termazing/tx-rails/*.lua ~/.config/nvim/lua/plugins/
cp -r ~/termazing/thm-ashen.lua ~/.config/nvim/lua/plugins/
echo "----------------------------"
echo ">> lazyvim first load (headless) <<"
echo "----------------------------"
nvim --headless "+Lazy! sync" +qa

echo "----------------------------"
echo ">> USE getnf to install nerd fonts <<"
echo "----------------------------"
sleep 3
