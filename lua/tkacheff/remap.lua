local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("i", "jk", "<Esc>")

map("n", "<leader>e", ":NvimTreeToggle<CR>")

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<S-h>', ':BufferLineCyclePrev<CR>')
map('n', '<S-l>', ':BufferLineCycleNext<CR>')
map('n', '<leader>c', ':Bdelete<CR>')

map('n', '<leader>s', ':w!<CR>')

map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('i', '<C-k>', function() require('lsp_signature').toggle_float_win() end)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<leader>F', '<cmd>lua vim.lsp.buf.format()<CR>')
map('n', 'gr', '<cmd>Telescope lsp_references<CR>')
map('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', 'gi', '<cmd>Telescope lsp_implementations<CR>')
map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>')

map('n', '<F3>', ':Telescope aerial<CR>')

map('n', '<F9>', ':Gitsigns blame_line<CR>')
