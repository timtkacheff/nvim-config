require('nvim-tree').setup({
    view = {
        adaptive_size = true,
    },
    actions = {
        open_file = {
            quit_on_open = false
        }
    },
    renderer = {
        indent_markers = {
            enable = true,
        },
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    diagnostics = {
        enable = true,
    },
})
