-- File: ~/.config/nvim/lua/plugins/languages.lua
-- Description: Central configuration for language support using LazyVim extras.

return {
  -- Additional, classic Vim plugins for Ruby on Rails development by Tim Pope.
  -- These are complementary to the setup provided by the LazyVim extra.
  { "tpope/vim-rails", ft = { "ruby" } },
  { "tpope/vim-bundler", ft = { "ruby" } },
  { "tpope/vim-rake", ft = { "ruby" } },
  { "tpope/vim-endwise", ft = { "ruby" } },
}
