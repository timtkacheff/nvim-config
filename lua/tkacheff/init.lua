require("tkacheff.plugins")
require("tkacheff.remap")
require("tkacheff.global")

require('gruvbox').setup {
	contrast = 'hard',
	inverse = false,
	dim_inactive = false,
	overrides = {
		SignColumn = { bg = "#1D2021" },
		GruvboxAquaSign = { bg = "#1D2021" },
		GruvboxBlueSign = { bg = "#1D2021" },
		GruvboxOrangeSign = { bg = "#1D2021" },
		GruvboxRedSign = { bg = "#1D2021" },
		GruvboxYellowSign = { bg = "#1D2021" },
		GruvboxPurpleSign = { bg = "#1D2021" },
	}
}

local set_hl_for_floating_window = function()
  vim.api.nvim_set_hl(0, 'NormalFloat', {
    link = 'Normal',
  })
end

set_hl_for_floating_window()

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  desc = 'Avoid overwritten by loading color schemes later',
  callback = set_hl_for_floating_window,
})

vim.cmd('colorscheme gruvbox')
