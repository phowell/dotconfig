require('nvim-treesitter.configs').setup({
	ensure_installed = {
		'bash',
		'c', 'cmake', 'comment', 'cpp', 'css',
		'dockerfile',
		'fish',
		'go',
		'help', 'html', 'http',
		'java', 'javascript', 'json',
		'latex', 'lua',
		'make', 'markdown',
		'perl', 'php', 'phpdoc', 'python',
		'regex', 'ruby', 'rust',
		'scss',
		'toml', 'tsx', 'typescript',
		'vim',
		'yaml',
	},
	-- uncomment this if the install barfs
	-- sync_install = true,
	highlight = {
		enable = true
	},
	incremental_selection = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
})
