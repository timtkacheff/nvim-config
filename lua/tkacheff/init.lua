require("tkacheff.plugins")
require("tkacheff.remap")
require("tkacheff.global")

-- local set_hl_for_floating_window = function()
--   vim.api.nvim_set_hl(0, 'NormalFloat', {
--     link = 'Normal',
--   })
-- end
--
-- set_hl_for_floating_window()
--
-- vim.api.nvim_create_autocmd('ColorScheme', {
--   pattern = '*',
--   desc = 'Avoid overwritten by loading color schemes later',
--   callback = set_hl_for_floating_window,
-- })

require('dracula').setup {
	colors = {
		menu = "#282A36"
	},
	italic_comment = true,
}

require('solarized-osaka').setup({
	transparent = true,
	styles = {
		functions = { italic = true },
		sidebars = "transparent",
		floats = "transparent",
	},
})

vim.cmd('colorscheme solarized-osaka')
