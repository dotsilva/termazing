#!/bin/env bash

echo "  ----------------------------  "
echo ">> PKG UPGRADE && INSTALL <<"
echo "  ----------------------------  "
pkg update
yes | pkg upgrade &&
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
echo ">> NERD FONTS SCRIPT AND DOTFILES <<"
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
echo ">> CONFIRMING CLIPBOARD <<"
echo "----------------------------"
command -v termux-clipboard-set

echo "----------------------------"
echo ">> NOKOGIRI GEM AND GEM INSTALL<<"
echo "----------------------------"
gem install nokogiri -- --use-system-libraries &&
  gem install rails bundler neovim erb-formatter \
    ruby-lsp rubocop readapt erb_lint slim_lint \
    haml_lint

echo "----------------------------"
echo ">> LUAROCKS INSTALL LUACHECK <<"
echo "----------------------------"
luarocks install luacheck

echo "----------------------------"
echo ">> NPM -G INSTALL <<"
echo "----------------------------"
npm install -g typescript-language-server \
  @fsouza/prettierd bash-language-server \
  neovim typescript eslint_d

echo "----------------------------"
echo ">> CARGO INSTALL AST-GREP <<"
echo "----------------------------"
cargo install ast-grep

echo "----------------------------"
echo ">> INSTALLING LAZYVIM <<"
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
echo ">> MOVING DOTLUA FILES <<"
echo "----------------------------"
cp -r ~/termazing/tx-rails/*.lua ~/.config/nvim/lua/plugins/
cp -r ~/termazing/thm-ashen.lua ~/.config/nvim/lua/plugins/

echo "----------------------------"
echo ">> STARTING LAZY FIRST TIME - HEADLESS <<"
echo "----------------------------"
nvim --headless "+Lazy! sync" +qa

echo "----------------------------"
echo ">> DONT FORGET NERD FONTS - getnf <<"
echo "----------------------------"
