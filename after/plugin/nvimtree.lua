local function attach_set(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
	vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
	vim.keymap.set('n', 'O', api.node.open.tab, opts("Open tab"))
end

require('nvim-tree').setup({
	on_attach = attach_set,
	view = {
		adaptive_size = true,
	},
	actions = {
		open_file = {
			quit_on_open = false
		}
	},
	renderer = {
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
	},
	diagnostics = {
		enable = true,
	},
})
