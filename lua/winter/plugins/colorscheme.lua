return {
	'nobbmaestro/nvim-andromeda',
	dependencies = { 'tjdevries/colorbuddy.nvim', branch = 'dev' },

	config = function()
		andromeda = require("andromeda")
		
		andromeda.setup({
			preset = "andromeda",
			transparent_bg = true,
			styles = {
				italic = true,
			}
		})	
	end
}
