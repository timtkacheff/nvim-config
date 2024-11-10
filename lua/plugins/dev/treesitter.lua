require("treesitter-context").setup {
	enable = false
}


require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust", "go", "python", "javascript", "typescript", "brief" },

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

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.brief = {
  install_info = {
    url = "~/.config/nvim/syntax/tree-sitter-brief",
    files = { "src/parser.c" },
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
  filetype = "brief",
}

vim.treesitter.language.register('brief', 'brief')

vim.filetype.add({
  extension = {
    brief = "brief",
  },
})
