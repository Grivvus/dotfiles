return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
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
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},
}
