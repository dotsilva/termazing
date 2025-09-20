return {
  {
    "Shopify/ruby-lsp",
    ft = { "ruby", "erb" },
    config = function()
      require("lspconfig").ruby_lsp.setup({})
    end,
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
      "nvim-neotest/neotest-plenary",
    },
    config = function()
      local ok, neotest = pcall(require, "neotest")
      if not ok then
        return
      end
      local adapters = {}
      pcall(function()
        table.insert(adapters, require("neotest-rspec"))
      end)
      neotest.setup({ adapters = adapters })
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local ok, dap = pcall(require, "dap")
      if not ok then
        return
      end
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
  { "stevearc/oil.nvim", opts = {} },
}
