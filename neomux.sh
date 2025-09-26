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
pkg install libxml2 libxslt htop
pkg install wget luarocks stylua lazygit
pkg install python ruby cmake ninja clang rust
pkg install ripgrep fzf fd curl tmux ncurses-utils
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
gem install rails bundler neovim erb-formatter
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
echo ">> building nokogiri gem <<"
echo "----------------------------"
sleep 5
gem install nokogiri -- --use-system-libraries
echo "----------------------------"
echo ">> nerd fonts scritpt <<"
echo "----------------------------"
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
slee 2
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
echo ">> FLEXING 💪 <<"
echo "----------------------------"
fastfetch
sleep 7
echo "----------------------------"
echo ">> applying purplewave theme <<"
echo ">> moving dotfiles <<"
echo "----------------------------"
mv ~/termazing/tx-rails/*.lua ~/.config/nvim/lua/plugins/
mv ~/termazing/tx-rails/colors.properties ~/.termux/
mv ~/termazing/tx-rails/tmux.conf ~/.tmux.conf
mv ~/termazing/tx-rails/profile ~/.profile
sleep 1
termux-reload-settings
sleep 1
echo "----------------------------"
echo ">> lazyvim first load (headless) <<"
echo "----------------------------"
sleep 5
nvim --headless "+Lazy! sync" +qa
echo "----------------------------"
echo ">> script finishing, opening neovim <<"
echo "----------------------------"
sleep 2
