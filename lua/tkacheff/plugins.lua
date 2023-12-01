return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use "stevearc/aerial.nvim"

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	use 'nvim-treesitter/nvim-treesitter-context'

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'onsails/lspkind.nvim'
	use 'ray-x/lsp_signature.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use 'famiu/bufdelete.nvim'

	use "tiagovla/scope.nvim"

	use { "anuvyklack/windows.nvim",
		requires = {
			"anuvyklack/middleclass",
			"anuvyklack/animation.nvim"
		}
	}

	use {
		"windwp/nvim-autopairs",
	}

	use 'lukas-reineke/indent-blankline.nvim'

	use {
		'numToStr/Comment.nvim',
	}

	use {
		"kylechui/nvim-surround",
	}

	use 'stevearc/dressing.nvim'

	use 'lewis6991/gitsigns.nvim'

	use 'ggandor/leap.nvim'
end)
