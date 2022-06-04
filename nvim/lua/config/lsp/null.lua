 require('null-ls').setup({
	debug = true,
	sources = {
		require("null-ls").builtins.diagnostics.vale.with({
			extra_filetypes = { "txt", "md", "markdown", "vimwiki"},
			extra_args = { "--config=/home/peterh/.config/vale.ini"},
		}),
	},
})
