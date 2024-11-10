local dap = require('dap')
require('dap-go').setup {
	delve = {
		build_flags = { "-tags=integration" }
	}
}

vim.fn.sign_define('DapBreakpoint', { text = '⬤', texthl = 'red', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
