return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"python-lsp-server",
				"clangd",
				"gopls",
				"html-lsp",
				"css-lsp",
                "elixir-ls",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"python",
				"markdown",
				"bash",
				"html",
				"css",
				"javascript",
				"go",
				"c",
				"cpp",
				"zig",
                "elixir",
			},
		},
	},
}
