return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        haml = { "haml_lint" },
        slim = { "slim_lint" },
      },
      linters = {
        haml_lint = {
          cmd = "haml-lint",
          args = { "-" }, -- read from stdin
          stdin = true,
          stream = "stdout",
          ignore_exitcode = true,
          parser = require("lint.parser").from_pattern(
            "([^:]+):(%d+) %[(%w)%] (.*)",
            { "file", "lnum", "severity", "message" },
            { ["E"] = vim.diagnostic.severity.ERROR, ["W"] = vim.diagnostic.severity.WARN },
            { source = "haml-lint" }
          ),
        },
        slim_lint = {
          cmd = "slim-lint",
          args = { "-" }, -- read from stdin
          stdin = true,
          stream = "stdout",
          ignore_exitcode = true,
          parser = require("lint.parser").from_pattern(
            "([^:]+):(%d+) %[(%w)%] (.*)",
            { "file", "lnum", "severity", "message" },
            { ["E"] = vim.diagnostic.severity.ERROR, ["W"] = vim.diagnostic.severity.WARN },
            { source = "slim-lint" }
          ),
        },
      },
    },
  },
}
