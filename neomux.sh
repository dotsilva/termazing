#!/bin/env bash

echo "  ----------------------------  "
echo ">> installing pkg dependencies <<"
echo "  ----------------------------  "
pkg update &&
  pkg upgrade -y &&
  pkg install mandoc &&
  pkg install build-essential termux-api which
pkg install mlocate nodejs-lts openssl
pkg install lua51* luajit lua-language-server
pkg install libxml2 libxslt htop
pkg install wget luarocks stylua lazygit
pkg install python ruby cmake ninja clang rust
pkg install ripgrep fzf fd curl tmux ncurses-utils
pkg install tree-sitter tree-sitter-lua
pkg instal fastfetch shfmt shellcheck neovim
echo "----------------------------"
echo ">> applying .files, font and theme <<"
echo "----------------------------"
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
getnfd
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
gem install rails bundler neovim erb-formatter
gem install ruby-lsp rubocop readapt
gem install erb_lint slim_lint haml_lint
echo "----------------------------"
echo ">> lua luacheck <<"
echo "----------------------------"
luarocks install luacheck
echo "----------------------------"
echo ">> installing npm dependencies <<"
echo "----------------------------"
npm install -g typescript-language-server
npm install -g @fsouza/prettierd
npm install -g bash-language-server
npm install -g neovim
npm install -g typescript
npm install -g eslint_d
echo "----------------------------"
echo ">> compiling cargo dependencies <<"
echo "----------------------------"
cargo install ast-grep
echo "----------------------------"
echo ">> building nokogiri gem <<"
echo "----------------------------"
gem install nokogiri -- --use-system-libraries
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
