-- File: ~/.config/nvim/lua/plugins/rails.lua
-- Description: Plugins essenciais para desenvolvimento com Ruby on Rails.

return {
  -- O plugin ESSENCIAL para desenvolvimento Rails.
  -- Inclui funcionalidades de rake, bundler, navegação entre arquivos MVC,
  -- comandos do console rails, etc. Substitui vim-rake e vim-bundler.
  {
    "tpope/vim-rails",
    lazy = true,
    ft = { "ruby" },
    -- Opcional: Adicionar dependências se precisar garantir a ordem de carregamento,
    -- mas para o vim-rails geralmente não é necessário.
    -- dependencies = {
    --   "nvim-lua/plenary.nvim",
    -- },
  },

  -- Suporte para a linguagem de template Slim.
  -- Mantenha este plugin apenas se você usa arquivos .slim em seus projetos.
  {
    "slim-template/vim-slim",
    lazy = true,
    ft = { "slim" },
  },
}
