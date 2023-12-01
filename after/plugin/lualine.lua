local lualine = require('lualine')

lualine.setup({
	options = {
		globalstatus = true,
	},
	sections = {
		lualine_c = {
			{
				'filename',
				path = 1
			},
			{
				function()
					if require("nvim-possession").status() ~= nil then
						return require('nvim-possession').status()
					end
					return ""
				end
			},
		}
	},
	extensions = {
		'nvim-tree',
	},
	inactive_winbar = {
		lualine_c = { 'filename' }
	},
	winbar = {
		lualine_c = {
			{
				'filename',
				path = 1
			},
			{
				'diagnostics',
				symbols = { error = '  ', warn = '  ', info = '  ' },
			}
		}
	}
})
