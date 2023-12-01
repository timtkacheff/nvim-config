local lualine = require('lualine')

lualine.setup({
	options = {
		globalstatus = true,
	},
	sections = {
		lualine_c = {
			{
				'filename',
				path = 1,
			}
		},
		lualine_y = {
			{
				'tabs',
				use_mode_colors = true,
			}
		}
	},
	inactive_winbar = {
		lualine_c = {
			{
				'filename',
				path = 1,
			}
		}
	},
	winbar = {
		lualine_a = {
			{
				'buffers',
			}
		}
	},
	extensions = {
		'nvim-tree',
	},
})
