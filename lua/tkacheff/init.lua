require("tkacheff.plugins")
require("tkacheff.remap")
require("tkacheff.global")
require("tkacheff.autocmds")

require('dracula').setup {
	colors = {
		-- Default dracula Colors
		-- bg = "#282A36",
		-- fg = "#F8F8F2",
		-- selection = "#44475A",
		-- comment = "#6272A4",
		-- red = "#FF5555",
		-- orange = "#FFB86C",
		-- yellow = "#F1FA8C",
		-- green = "#50fa7b",
		-- purple = "#BD93F9",
		-- cyan = "#8BE9FD",
		-- pink = "#FF79C6",
		-- bright_red = "#FF6E6E",
		-- bright_green = "#69FF94",
		-- bright_yellow = "#FFFFA5",
		-- bright_blue = "#D6ACFF",
		-- bright_magenta = "#FF92DF",
		-- bright_cyan = "#A4FFFF",
		-- bright_white = "#FFFFFF",
		-- menu = "#21222C",
		-- visual = "#3E4452",
		-- gutter_fg = "#4B5263",
		-- nontext = "#3B4048",
		-- white = "#ABB2BF",
		-- black = "#191A21",

		-- bg = "#171718",
		bg = "#1e1e1e",
		fg = "#F8F8F2",
		selection = "#3A3A3A",
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
		-- menu = "#171718",
		menu = "#1e1e1e",
		visual = "#3A3A3A",
		gutter_fg = "#4B5263",
		nontext = "#3B4048",
		white = "#ABB2BF",
		black = "#191A21",
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

vim.cmd('colorscheme dracula')
