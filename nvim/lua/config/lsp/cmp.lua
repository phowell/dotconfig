local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {},
	completion = {
		completeopt = "menu,menuone,noinsert",
	},
	mapping = {
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-j>'] = cmp.mapping.select_next_item({}),
		['<C-k>'] = cmp.mapping.select_prev_item({}),
		['<C-Space>'] = cmp.mapping.complete({}),
		['<C-q>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({select = true}),
	},
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
		{name = 'buffer'},
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).¬
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).¬
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' },
		{ name = 'cmdline' },
	}),
})
