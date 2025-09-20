return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {},
      },
      setup = {
        tsserver = function(_, opts)
          local cfg = vim.tbl_deep_extend("force", opts, {
            cmd = { "typescript-language-server", "--stdio" },
            mason = false,
          })
          require("lspconfig").tsserver.setup(cfg)
          return true
        end,
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
      },
    },
  },
}
