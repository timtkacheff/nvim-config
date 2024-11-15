-- local HEIGHT_RATIO = 0.8  -- You can change this
-- local WIDTH_RATIO = 0.3   -- You can change this too

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
	vim.keymap.set('n', 's', api.node.open.vertical, opts("Open V-Split"))
	vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node, opts('CD'))
end

require('nvim-tree').setup({
	on_attach = attach_set,
	view = {
		adaptive_size = true,
		side = "left",
	},
	-- view = {
	-- 	float = {
	-- 		enable = true,
	-- 		open_win_config = function()
	-- 			local screen_w = vim.opt.columns:get()
	-- 			local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
	-- 			local window_w = screen_w * WIDTH_RATIO
	-- 			local window_h = screen_h * HEIGHT_RATIO
	-- 			local window_w_int = math.floor(window_w)
	-- 			local window_h_int = math.floor(window_h)
	-- 			local center_x = (screen_w - window_w) / 2
	-- 			local center_y = ((vim.opt.lines:get() - window_h) / 2)
	-- 				- vim.opt.cmdheight:get()
	-- 			return {
	-- 				border = 'single',
	-- 				relative = 'editor',
	-- 				row = center_y,
	-- 				col = center_x,
	-- 				width = window_w_int,
	-- 				height = window_h_int,
	-- 			}
	-- 		end,
	-- 	},
	-- 	width = function()
	-- 		return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
	-- 	end,
	-- },
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
	filters = {
		git_ignored = false,
	}
})
