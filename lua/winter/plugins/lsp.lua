return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "emmet_language_server" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			local function get_root_dir(fname)
				return lspconfig.util.find_git_ancestor(fname)
			end

			lspconfig.lua_ls.setup {
				root_dir = get_root_dir,
			}
			lspconfig.tsserver.setup {
				root_dir = get_root_dir,
			}
			lspconfig.emmet_language_server.setup {
				root_dir = get_root_dir,
			}
		end
	},
}
