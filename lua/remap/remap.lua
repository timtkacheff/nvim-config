local map = require('remap.base').map

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
map("n", "<leader>E", ":NvimTreeFindFile<CR>")
map("n", "<leader>df", "<cmd>Gitsigns diffthis<CR><C-w>h")

-- movement
-- map('n', '<Tab>', '<C-w><C-w>')
-- map('n', '<S-Tab>', '<C-w>W')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- splits
map('n', '<leader>vv', ':vsplit<CR>')
map('n', '<leader>vs', ':split<CR>')
map('n', '<leader>vc', ':close<CR>')
map('n', '<leader>vx', '<C-w>x')
map('n', '<leader>vz', ':WindowsMaximize<CR>')

-- tabs & buffers
map('n', '<F5>', ":tabnew<CR>")
map('n', '<S-h>', ':bprevious<CR>')
map('n', '<S-l>', ':bnext<CR>')
map('n', '<leader>c', ':Bdelete<CR>')  -- close only buffer
map('n', '<leader>q', ':bdelete!<CR>') -- close buffer and split

map('n', '<leader>s', ':w!<CR>')

-- lsp
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('i', '<C-k>', function() require('lsp_signature').toggle_float_win() end)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', 'gD', ':vsplit | lua vim.lsp.buf.definition()<CR>')
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
map('t', 'jk', '<C-\\><C-n>')

-- sessions
map('n', '<leader>ls', ':SessionManager load_current_dir_session<CR>')
