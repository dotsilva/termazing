-- ~/.config/nvim/lua/plugins/formatting.lua
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        haml = { "haml_lint" },
        slim = { "slim_lint" },
      },
      formatters = {
        haml_lint = {
          command = "haml-lint",
          args = { "-" },
          stdin = true,
          ignore_exitcode = true,
        },
        slim_lint = {
          command = "slim-lint",
          args = { "-" },
          stdin = true,
          ignore_exitcode = true,
        },
      },
    },
  },
}
