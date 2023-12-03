require("mason").setup()
require("mason-lspconfig").setup()

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
	window = {
		completion = {
			border = "single",
			winhighlight = "Normal:Normal,FloatBorder:Normal,Search:Normal",
		},
		documentation = {
			border = "single",
			winhighlight = "Normal:Normal,FloatBorder:Normal,Search:Normal",
		}
	},
	experimental = {
		ghost_text = true
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-e>"] = cmp.mapping({
			i = function()
				if cmp.visible() then
					cmp.abort()
				else
					cmp.complete()
				end
			end,
			c = function()
				if cmp.visible() then
					cmp.close()
				else
					cmp.complete()
				end
			end,
		}),
		["<CR>"] = cmp.mapping(cmp.mapping.confirm({ select = false }), { 'i', 'c' })
	},

	formatting = {
		format = require('lspkind').cmp_format({
			mode = 'symbol_text',
		}),
	},

	sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
		},
		{
			{ name = 'buffer' },
		}),
}, {}, {})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local border = {
	{ "🭽", "FloatBorder" },
	{ "▔", "FloatBorder" },
	{ "🭾", "FloatBorder" },
	{ "▕", "FloatBorder" },
	{ "🭿", "FloatBorder" },
	{ "▁", "FloatBorder" },
	{ "🭼", "FloatBorder" },
	{ "▏", "FloatBorder" },
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = opts.border or border
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

require("mason-lspconfig").setup_handlers {
	function(server_name)
		local opts = {
			capabilities = capabilities
		}
		if server_name == "clangd" then
			opts.filetypes = { "c", "cpp", "objc", "objcpp", "cuda" }
		elseif server_name == "lua_ls" then
			opts = {
				settings = {
					Lua = {
						runtime = {
							version = 'LuaJIT',
						},
						diagnostics = {
							globals = {
								'vim',
								'require'
							},
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
						telemetry = {
							enable = false,
						},
					},
				},
				capabilities = capabilities,
			}
		end

		require("lspconfig")[server_name].setup(opts)
	end,
}

require("lsp_signature").setup({
	hint_enable = false,
	floating_window = false
})

require('fidget').setup()
