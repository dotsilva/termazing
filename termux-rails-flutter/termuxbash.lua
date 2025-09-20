-- ~/.config/nvim/lua/plugins/lang-bash.lua
return {
  -- Configuração para o Language Server de Bash
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Garante que o bash-language-server (bashls) seja configurado
        bashls = {},
      },
    },
  },

  -- Configuração do formatador e linter via conform.nvim e nvim-lint
  -- (LazyVim geralmente já inclui estes plugins, estamos apenas adicionando a configuração)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Usa o 'shfmt' para formatar arquivos sh, bash, zsh
        sh = { "shfmt" },
        bash = { "shfmt" },
        zsh = { "shfmt" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- Usa o 'shellcheck' para linting
        sh = { "shellcheck" },
        bash = { "shellcheck" },
        zsh = { "shellcheck" },
      },
    },
  },

  -- Garante que o parser do Treesitter para Bash esteja instalado
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
      },
    },
  },
}
