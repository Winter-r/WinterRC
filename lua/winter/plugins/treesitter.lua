return {
 	"nvim-treesitter/nvim-treesitter",
 	build = ":TSUpdate" ,

	config = function()
	treesitter = require("nvim-treesitter.configs")

		treesitter.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "c_sharp" },
			sync_install = false,
  			auto_install = true,

  			ignore_install = { "javascript" },
  			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			}
		}
	end
}
