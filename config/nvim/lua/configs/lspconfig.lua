local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
	"clangd",
	"pylsp",
	"gopls",
	"lua_ls",
    "gleam",
    "zls",
    "dartls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
	-- setting up mypy extenstion for pylsp
	-- venv of pylsp located in /home/grivvus/.local/share/nvim/mason/packages/python-lsp-server/
	-- you should install and update pylsp-mypy manualy
	if lsp == "pylsp" then
		lspconfig[lsp].setup({
			settings = {
				pylsp = {
					plugins = { pylsp_mypy = { enabled = true } },
				},
			},
            on_attach = on_attach,
            on_init = on_init,
            capabilities = capabilities,
		})
	else
		lspconfig[lsp].setup({
			on_attach = on_attach,
			on_init = on_init,
			capabilities = capabilities,
		})
	end
end
