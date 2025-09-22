return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Web (JavaScript, TypeScript, HTML, CSS, JSON)
      ["javascript"] = { "prettierd" },
      ["typescript"] = { "prettierd" },
      ["html"] = { "prettierd" },
      ["css"] = { "prettierd" },
      ["json"] = { "prettierd" },

      -- Ruby
      ["ruby"] = { "rubocop" },

      -- Outras
      ["lua"] = { "stylua" },
      ["bash"] = { "shfmt" },
      ["sh"] = { "shfmt" },
    },
  },
}
