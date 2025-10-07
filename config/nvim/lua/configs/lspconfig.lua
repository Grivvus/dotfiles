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
