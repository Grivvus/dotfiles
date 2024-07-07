return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
   {
     "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },

   {
   	"williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
            "lua-language-server", "python-lsp-server", "clangd",
            "gopls", "typescript-language-server", "html-lsp", "css-lsp"
         }
   	},
   },

   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
    		"lua", "python", "markdown", "bash",
            "html", "css", "javascript",
            "go", "java",
            "c", "cpp", "zig", "llvm"
   		},
   	},
   },

   {
        "Exafunction/codeium.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("codeium").setup({
            })
        end
        },
}
