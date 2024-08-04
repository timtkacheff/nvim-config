local map = require('remap.base').map

local isUiOpen = false

map('n', '<leader>db', function()
	if isUiOpen == false then
		isUiOpen = true
		require("nvim-tree.api").tree.close()
		require("dapui").close()
		require('dapui').open({ reset = true })
	else
		isUiOpen = false
		vim.keymap.set('n', '<CR>', '<CR>')

		require("dapui").close()
	end
end)

map('n', '<leader>dq', function()
	require('dap').terminate()
	vim.keymap.set('n', '<CR>', '<CR>')
end)

map('n', '<leader>br', function() require('dap').toggle_breakpoint() end)
