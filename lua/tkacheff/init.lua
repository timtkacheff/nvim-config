require("tkacheff.plugins")
require("tkacheff.remap")
require("tkacheff.global")
require("tkacheff.autocmds")

local bg = "#141414"

require('dracula').setup {
	colors = {
		bg = bg,
		fg = "#F8F8F2",
		selection = "#191919",
		comment = "#5E61AA",
		red = "#FF5555",
		orange = "#FFB86C",
		yellow = "#F1FA8C",
		green = "#8EF593",
		purple = "#BD93F9",
		cyan = "#8BE9FD",
		pink = "#F88ED9",
		bright_red = "#FF6E6E",
		bright_green = "#69FF94",
		bright_yellow = "#FFFFA5",
		bright_blue = "#D6ACFF",
		bright_magenta = "#FF92DF",
		bright_cyan = "#6FAFFA",
		bright_white = "#FFFFFF",
		menu = bg,
		visual = "#3A3A3A",
		gutter_fg = "#4B5263",
		nontext = "#3B4048",
		white = "#ABB2BF",
		black = "#191A21",
		-- black = bg,
	},
	italic_comment = true,
}

-- local colors = require("ayu.colors")
-- colors.generate(false)

-- require('ayu').setup({
-- overrides = {
-- 	CursorLine = { fg = "#e4c104" },
-- 	SignColumn = { bg = colors.bg },
-- 	ColorColumn = { bg = "#1f1f1f" },
-- 	Menu = { bg = "#e4c104" },
-- },
-- })
--
-- require('ayu').colorscheme()
-- vim.cmd("colorscheme ayu-mirage")

vim.g.gruvbox_material_background = 'medium'
vim.cmd('colorscheme gruvbox-material')
