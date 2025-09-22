-- ~/.config/nvim/lua/plugins/conform.lua
return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			-- Usando prettierd para todos os tipos de arquivo de frontend
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
			vue = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			html = { "prettierd" },
			json = { "prettierd" },
			yaml = { "prettierd" },
			markdown = { "prettierd" },

			-- Formatadores de Ruby e templates relacionados
			ruby = { "rubocop" },

			-- Outros formatadores
			lua = { "stylua" },
			sh = { "shfmt" },
			bash = { "shfmt" },
		},
	},
}
