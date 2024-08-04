local base = {}

function base.map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	-- vim.api.nvim_set_keymap(mode, lhs, rhs, options)
	vim.keymap.set(mode, lhs, rhs, opts)
end

function base.delete(mode, lhs, desc)
	local opts = { noremap = true, silent = true, desc = desc }
	vim.keymap.del(mode, lhs, opts)
end

return base
