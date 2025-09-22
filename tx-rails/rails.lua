-- ~/.config/nvim/lua/plugins/rails.lua - VERSÃO FINAL CORRIGIDA
return {
  -- Sua configuração do Telescope
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fr",
        function()
          require("telescope.builtin").oldfiles({
            prompt_title = "Recent Files",
            cwd_only = true,
          })
        end,
        desc = "Recent Files (cwd)",
      },
    },
  },

  -- Suas configurações de Ruby/Rails

  {
    "tpope/vim-rails",
    ft = "ruby",
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          init_options = {
            experimentalFeaturesEnabled = true,
            addonSettings = {
              rails = {
                enablePendingMigrationsPrompt = false,
              },
            },
          },
        },
      },
    },
  },
}
