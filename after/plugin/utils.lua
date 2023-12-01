require('leap').setup{}
require('leap').add_default_mappings()
require("ibl").setup({
	scope = {
		enabled = false,
	}
})
require("nvim-autopairs").setup {}
require('Comment').setup()
require("nvim-surround").setup({})

