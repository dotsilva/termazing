-- ~/.config/nvim/lua/plugins/termux-paths.lua

return {
  -- Configure the formatter (conform.nvim)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        stylua = {
          command = "/data/data/com.termux/files/usr/bin/stylua",
        },
      },
    },
  },

  -- Configure the linter (nvim-lint)
  {
    "mfussenegger/nvim-lint",
    config = function()
      require("lint").linters.erb_lint.cmd = "/data/data/com.termux/files/usr/bin/erb_lint"
      require("lint").linters.erb_lint.stdin = true
    end,
  },

  -- Prevent Mason from trying to install system-managed tools
  {
    "mason-org/mason.nvim", -- <-- This is the new, correct location.
    opts = function(_, opts)
      opts.ensure_installed = {
        "bash-language-server",
        "erb-formatter",
        "ruby-lsp",
        "rubocop",
        -- "stylua" and "erb_lint" are managed by the system, not Mason
      }
    end,
  },
}
