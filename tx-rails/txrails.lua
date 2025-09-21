-- File: ~/.config/nvim/lua/plugins/rails-complements.lua
-- Description: Complementary plugins for Ruby on Rails development.

return {
  -- Bundler command integration (:Bundle open, :Bundle install)
  {
    "tpope/vim-bundler",
    lazy = true,
    ft = { "ruby" },
  },

  -- Rake task integration (:Rake db:migrate)
  {
    "tpope/vim-rake",
    lazy = true,
    ft = { "ruby" },
  },

  -- Slim template file support
  {
    "slim-template/vim-slim",
    lazy = true,
    ft = { "slim" },
  },
}
