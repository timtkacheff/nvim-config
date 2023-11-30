require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "rust", "go", "python", "javascript", "typescript" },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
    },

    rainbow = {
        enable = true,
        extended_mode = false,
    },

    autotag = {
        enable = true
    }
}

