require("tkacheff.plugins")
require("tkacheff.remap")
require("tkacheff.global")

-- local set_hl_for_floating_window = function()
--   vim.api.nvim_set_hl(0, 'NormalFloat', {
--     link = 'Normal',
--   })
-- end
--
-- set_hl_for_floating_window()
--
-- vim.api.nvim_create_autocmd('ColorScheme', {
--   pattern = '*',
--   desc = 'Avoid overwritten by loading color schemes later',
--   callback = set_hl_for_floating_window,
-- })
--
vim.cmd('colorscheme monokai-pro-classic')
