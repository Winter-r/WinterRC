return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local lspconfig = require("lspconfig")
		
		mason.setup()
		mason_lspconfig.setup({
			ensure_installed = { "lua_ls", "omnisharp" }
		})
		
		lspconfig.lua_ls.setup {}
		lspconfig.csharp_ls.setup {}
	end
}
