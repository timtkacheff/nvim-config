local bufferline = require('bufferline')

bufferline.setup {
	options = {
		style_preset = bufferline.style_preset.minimal,
		-- indicator = { style = 'underline' },
		buffer_close_icon = '󰅖',
		modified_icon = '●',
		offsets = {
			{
				filetype = "NvimTree",
				text = 'tree',
				highlight = "Directory",
				separator = false
			}
		},
	}
}

-- vim.cmd [[
-- hi BufferLineFill guibg=#141414
-- hi BufferLineBackground guibg=#141414 " guifg=#ffffff
-- set termguicolors
-- ]]
