return {
  {
    "Shopify/ruby-lsp",
    ft = { "ruby", "erb" },
  },
  {
    "mfussenegger/nvim-lint",
    ft = { "ruby" },
    opts = {
      linters_by_ft = {
        ruby = { "rubocop" },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    ft = { "ruby" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "olimorris/neotest-rspec",
      "nvim-neotest/nvim-nio",
    },
    opts = {
      adapters = {
        require("neotest-rspec"),
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    ft = { "ruby" },
    config = function()
      local dap = require("dap")
      dap.adapters.ruby = {
        type = "executable",
        command = "bundle",
        args = { "exec", "readapt", "stdio" },
      }
      dap.configurations.ruby = {
        {
          type = "ruby",
          request = "launch",
          name = "Debug current file",
          program = "${file}",
        },
      }
    end,
  },
  { "tpope/vim-rails", ft = { "ruby" } },
  { "tpope/vim-bundler", ft = { "ruby" } },
  { "tpope/vim-rake", ft = { "ruby" } },
  { "tpope/vim-endwise", ft = { "ruby" } },
  {
    "stevearc/oil.nvim",
    opts = {},
  },
}
