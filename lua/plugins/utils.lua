require("scope").setup {}

require('leap').setup {}
require('leap').add_default_mappings()

require("nvim-autopairs").setup {}
require('Comment').setup()
require("nvim-surround").setup({})

-- require('auto-dark-mode').setup{}

require('ibl').setup {}

require('todo-comments').setup {
	keywords = {
		FIX = {
			icon = " ", -- icon used for the sign, and in search results
			color = "error", -- can be a hex color, or a named color (see below)
			alt = { "fix", "bug", "fixit", "issue" }, -- a set of other keywords that all map to this FIX keywords
			-- signs = false, -- configure signs for some keywords individually
		},
		TODO = { icon = " ", color = "info", alt = { "todo" } },
		HACK = { icon = " ", color = "warning", alt = { "hack" } },
		WARN = { icon = " ", color = "warning", alt = { "warning", "warn" } },
		NOTE = { icon = " ", color = "hint", alt = { "info", "note" } },
	},
}
