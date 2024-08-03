local lualine = require('lualine')

lualine.setup({
	options = {
		theme = 'ayu',
		globalstatus = true,
		component_separators = '',
		section_separators = ''
	},
	sections = {
		lualine_c = {
			{
				'filename',
				path = 2,
			}
		},
		lualine_y = {
			{
				'tabs',
				use_mode_colors = true,
			}
		}
	},
	-- inactive_winbar = {
	-- 	lualine_c = {
	-- 		{
	-- 			'filename',
	-- 			path = 1,
	-- 		}
	-- 	}
	-- },
	-- winbar = {
	-- 	lualine_a = {
	-- 		{
	-- 			'buffers',
	-- 		}
	-- 	}
	-- },
	extensions = {
		'nvim-tree',
	},
})
