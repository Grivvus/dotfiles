local servers = {
	"clangd",
	"pylsp",
	"gopls",
	"lua_ls",
	"gleam",
	"zls",
}

local settings = {
	gopls = {
		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
				},
				staticcheck = true,
				gofumpt = true,
			},
		},
	},
	-- setting up mypy extenstion for pylsp
	-- venv of pylsp located in /home/grivvus/.local/share/nvim/mason/packages/python-lsp-server/
	-- you should install and update pylsp-mypy manualy
	pylsp = {
		settings = {
			pylsp = {
				plugins = { pylsp_mypy = { enabled = true } },
			},
		},
	},
}

-- lsps with default config
for _, lsp in ipairs(servers) do
	vim.lsp.enable(lsp)
end

for _, setting in ipairs(settings) do
	vim.lsp.config(setting, settings[setting])
end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable "Go to Definition" with <Ctrl-]>
    vim.keymap.set('n', '<C-]>', vim.lsp.buf.definition, { buffer = ev.buf })
    -- Other useful LSP keybinds:
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf })
  end,
})
