local neotest = require('neotest')
local coverage = require('coverage')

local go_adapter_config = {
	go_test_args = {
		"-v",
		"--tags=integration",
		"-race",
		"-count=1",
		"-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
	},
}

neotest.setup {
	adapters = {
		require("neotest-golang")(go_adapter_config)
	}
}

coverage.setup {}

vim.keymap.set('n', '<leader>tr', function() neotest.run.run() end)
vim.keymap.set('n', '<leader>tw', function() neotest.summary.toggle() end)
vim.keymap.set('n', '<leader>to', function() neotest.output.open() end)
vim.keymap.set('n', '<leader>tp', function() neotest.output_panel.toggle() end)
