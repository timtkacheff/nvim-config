return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end
	}

	use 'Mofiqul/dracula.nvim'
	use { "sainnhe/gruvbox-material" }
	use 'Shatur/neovim-ayu'

	use 'f-person/auto-dark-mode.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use "stevearc/aerial.nvim"

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
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

	use({
		"nvim-neotest/neotest",
		requires = {
			"fredrikaverpil/neotest-golang",
			"nvim-neotest/nvim-nio"
		},
		config = function()
			local neotest_ns = vim.api.nvim_create_namespace("neotest")
			vim.diagnostic.config({
				virtual_text = {
					format = function(diagnostic)
						local message =
							diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
						return message
					end,
				},
			}, neotest_ns)
		end,
	})

	use({
		"andythigpen/nvim-coverage",
		requires = "nvim-lua/plenary.nvim",
	})

	use {
		"anuvyklack/windows.nvim",
		requires = "anuvyklack/middleclass",
	}

	use 'j-hui/fidget.nvim'
	use 'yamatsum/nvim-cursorline'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use 'famiu/bufdelete.nvim'
	use 'akinsho/bufferline.nvim'

	use "tiagovla/scope.nvim"

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

	use 'Shatur/neovim-session-manager'

	use 'aserowy/tmux.nvim'

	use 'folke/todo-comments.nvim'

	use { "rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
	}
	use 'leoluz/nvim-dap-go'

end)
