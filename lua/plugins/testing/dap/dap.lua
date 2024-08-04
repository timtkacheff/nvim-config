require('dap-go').setup()

vim.fn.sign_define('DapBreakpoint', { text = '⬤', texthl = 'red', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
