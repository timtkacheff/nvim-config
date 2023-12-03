local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- essentials
map("i", "jk", "<Esc>")
map('v', '<C-y>', '"+y')

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- files
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>df", "<cmd>Gitsigns diffthis<CR><C-w>h")

-- movement
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- windows
map('n', '<C-w>z', ':WindowsMaximize<CR>')

-- tabs & buffers
map('n', '<F5>', ":tabnew<CR>")
map('n', '<S-h>', ':bprevious<CR>')
map('n', '<S-l>', ':bnext<CR>')
map('n', '<leader>c', ':Bdelete<CR>') -- close only buffer
map('n', '<leader>q', ':bdelete!<CR>') -- close buffer and split

map('n', '<leader>s', ':w!<CR>')

-- lsp
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('i', '<C-k>', function() require('lsp_signature').toggle_float_win() end)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<leader>F', '<cmd>lua vim.lsp.buf.format()<CR>')
map('n', 'gr', '<cmd>Telescope lsp_references<CR>')
map('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', 'gi', '<cmd>Telescope lsp_implementations<CR>')
map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>')

-- treesitter
map('n', '[c', ':TSContextToggle<CR>')

-- telescope
map('n', '<F3>', ':Telescope aerial<CR>')

-- git
map('n', '<F9>', ':Gitsigns blame_line<CR>')

-- terminal
map('n', '\\\\', ":belowright split term://zsh<CR>")
map('t', '<Esc>', '<C-\\><C-n>')
