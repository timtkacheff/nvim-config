local neotest = require('neotest')
local coverage = require('coverage')

local go_adapter_config = { -- Specify configuration
	go_test_args = {
		"-v",
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

coverage.setup {
}

local function run_with_coverage()
	local coverage_path = vim.fn.getcwd() .. "/coverage.out"
	neotest.run.run({ extra_args = { "-coverprofile " .. coverage_path } })
end


vim.keymap.set('n', '<leader>tr', function() neotest.run.run() end)
vim.keymap.set('n', '<leader>tc', run_with_coverage)
vim.keymap.set('n', '<leader>tw', function() neotest.summary.toggle() end)
