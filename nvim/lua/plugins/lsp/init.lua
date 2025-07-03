return {
	require("plugins.lsp.conform"),
	-- Mason (LSP installer)
	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		build = ":MasonUpdate",
		config = true,
	},

	-- Bridge Mason <-> LSPConfig
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"pyright",
				"clojure_lsp",
				"clangd",
			},
		},
	},

	-- LSP Config
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mason-lspconfig.nvim" },
		config = function()
			local lspconfig = require("lspconfig")

			local servers = {
				lua_ls = require("plugins.lsp.servers.lua_ls"),
				ts_ls = require("plugins.lsp.servers.ts_ls"),
				pyright = require("plugins.lsp.servers.pyright"),
				clojure_lsp = require("plugins.lsp.servers.clojure_lsp"),
				clangd = require("plugins.lsp.servers.clangd"),
			}

			for name, config in pairs(servers) do
				lspconfig[name].setup(config)
			end
		end,
	},
}
