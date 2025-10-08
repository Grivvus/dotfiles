return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
	},
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("config.conform")
		end,
	},
	{
		"m4xshen/hardtime.nvim",
		lazy = false,
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
		config = function()
			require("hardtime").setup()
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("config.lspconfig")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP source
			"hrsh7th/cmp-buffer", -- Buffer source
			"hrsh7th/cmp-path", -- Path source
			"hrsh7th/cmp-cmdline", -- Command line source
			"saadparwaiz1/cmp_luasnip", -- Snippets source
			"L3MON4D3/LuaSnip", -- Snippet engine
			"rafamadriz/friendly-snippets", -- Snippet collections
		},
	},

	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		opts = {
			ensure_installed = {
				"lua-language-server",
				"python-lsp-server",
				"clangd",
				"gopls",
				"zls",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"python",
				"markdown",
				"bash",
				"go",
				"c",
				"cpp",
				"zig",
				"gleam",
				"kotlin",
			},
		},
	},
	{
		"folke/which-key.nvim",
		lazy = false,
	},
	{
		"nvim-telescope/telescope.nvim",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
}
