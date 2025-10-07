-- setting up "conform.nvim" plugins

local options = {
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort" },
		go = { "goimports", "gofmt" },
	},
}

require("conform").setup(options)
