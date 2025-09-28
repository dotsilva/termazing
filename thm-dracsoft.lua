return {
  -- Adiciona o plugin do Dracula
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
  },

  -- Configura o LazyVim para usar o Dracula como tema principal
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula-soft",
    },
  },
}
