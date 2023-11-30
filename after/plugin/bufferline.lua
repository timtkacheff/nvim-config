local bufferline = require('bufferline')

bufferline.setup {
	-- highlights = highlights,
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = 'tree',
				highlight = "Directory",
				separator = false
			}
		},
		separator_style = '',
		diagnostics = 'nvim_lsp',
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " "
					or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end
	}
}
