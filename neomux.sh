#!/bin/env bash

echo "  ----------------------------  "
echo ">> installing pkg dependencies <<"
echo "  ----------------------------  "
pkg update
pkg upgrade -y
pkg install -y mandoc &&
  pkg install -y build-essential termux-api which \
    mlocate nodejs-lts openssl \
    lua51 luajit lua-language-server \
    libxml2 libxslt htop \
    wget luarocks stylua lazygit \
    python ruby cmake ninja clang rust \
    ripgrep fzf fd curl tmux ncurses-utils \
    tree-sitter tree-sitter-lua \
    fastfetch shfmt shellcheck neovim &&
  echo "----------------------------"
echo ">> applying .files, font and theme <<"
echo "----------------------------"
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash &&
  getnf
mv ~/termazing/tx-rails/2colors.properties ~/.termux/
mv ~/termazing/tx-rails/tmux.conf ~/.tmux.conf
mv ~/termazing/tx-rails/profile ~/.profile
termux-reload-settings
echo "----------------------------"
echo ">> confirming clipboard <<"
echo "----------------------------"
command -v termux-clipboard-set
echo "----------------------------"
echo ">> ruby lsp, dap and etc <<"
echo "----------------------------"
gem update
gem install rails bundler neovim erb-formatter \
  ruby-lsp rubocop readapt erb_lint slim_lint \
  haml_lint &&
  echo "----------------------------"
echo ">> lua luacheck <<"
echo "----------------------------"
luarocks install luacheck &&
  echo "----------------------------"
echo ">> installing npm dependencies <<"
echo "----------------------------"
npm install -g typescript-language-server \
  @fsouza/prettierd bash-language-server \
  neovim typescript eslint_d &&
  echo "----------------------------"
echo ">> compiling cargo dependencies <<"
echo "----------------------------"
cargo install ast-grep &&
  echo "----------------------------"
echo ">> building nokogiri gem <<"
echo "----------------------------"
gem install nokogiri -- --use-system-libraries &&
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
echo ">> FLEXING 💪 <<"
echo "----------------------------"
fastfetch
echo "----------------------------"
echo ">> moving .lua files <<"
echo "----------------------------"
mv ~/termazing/tx-rails/*.lua ~/.config/nvim/lua/plugins/
echo "----------------------------"
echo ">> lazyvim first load (headless) <<"
echo "----------------------------"
nvim --headless "+Lazy! sync" +qa
echo "----------------------------"
echo ">> script finished <<"
echo "----------------------------"
