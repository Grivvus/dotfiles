require("options")
require("keymaps")

require("config.lazy")
require("config.cmp")
require("config.bufferline")

require("lualine").setup({})
vim.cmd.colorscheme("catppuccin")

require("vim._core.ui2").enable({})
