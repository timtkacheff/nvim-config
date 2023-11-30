local lualine = require('lualine')

lualine.setup({
    options = {
        globalstatus = false,
    },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1
            }
        }
    },
    extensions = {
        'nvim-tree',
    }
})
