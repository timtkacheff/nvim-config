local aerial = require("aerial")
local telescope = require("telescope")
local resolve = require("telescope.config.resolve")

local actions = require("telescope.actions")

aerial.setup()
telescope.load_extension('aerial')

telescope.setup {
	defaults = {
		mappings = {
			n = {
				["s"] = actions.file_vsplit,
			},
		},
		layout_strategy = "vertical",
		layout_config = {
			width = resolve.resolve_width(0.7),
			horizontal = {
				prompt_position = "top",
			},
			vertical = {
				preview_height = resolve.resolve_height(0.6),
				prompt_position = "bottom",
			},
		},
	},
	pickers = {
		buffers = {
			mappings = {
				n = {
					["d"] = actions.delete_buffer,
				}
			}
		}
	},
	extensions = {
		aerial = {
			-- Display symbols as <root>.<parent>.<symbol>
			show_nesting = {
				['_'] = false, -- This key will be the default
				json = true, -- You can set the option for specific filetypes
				yaml = true,
			}
		}
	}
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>dd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bf', builtin.current_buffer_fuzzy_find)
vim.keymap.set('n', "<leader>bb", builtin.buffers)
vim.keymap.set('n', '<leader>tt', builtin.resume)
vim.keymap.set('n', '<leader>gs', builtin.grep_string)
vim.keymap.set('n', '<leader>td', ':TodoTelescope <CR>')
