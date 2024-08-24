-- setting up "conform.nvim" plugins

local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort" },
		go = { "goimports", "gofmt" },
	},
}

require("conform").setup(options)
