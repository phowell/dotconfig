require('nvim-lsp-installer').setup({
	ensure_installed = {
		'ansiblels',		-- Ansible
		'dockerls',			-- Docker

		'html', 'cssls',	-- HTML, CSS
		'tsserver',			-- Javascript, Typescrypt

		'jsonls',			-- JSON
		'taplo', 'yamlls',	-- TOML, YAML
		--'lemminx',		-- XML
		--'sqlls',			-- SQL

		'sumneko_lua',		-- Lua
		'pyright',			-- Python
		'rust-analyzer',	-- Rust
		--'texlab',			-- LaTeX
		--'vimls',			-- Vimscript
		--'bashls',			-- Bash
		--'clangd',			-- C, C++
		--'gopls',			-- Go
		--'intelephense',	-- PHP
		--'jdls',			-- Java
		--'solargraph',		-- Ruby
	},
	automatic_installation = true,
	ui = {
		icons = {
			server_installed = "✓",
			server_pending = "➜",
			server_uninstalled = "✗"
		}
	}
})


require('config.lsp.cmp')
require('config.lsp.lua')


require('config.lsp.devops')
require('config.lsp.data')
require('config.lsp.python')
require('config.lsp.rust')
require('config.lsp.webdev')
