-- I'm using Packer for package management
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)

	-- Bootstrap
	use {'wbthomason/packer.nvim', opt = true}
	use {'lewis6991/impatient.nvim'}

	-- Prettiness
	use 'lifepillar/vim-gruvbox8'
	use {'kyazdani42/nvim-web-devicons', as ='devicons'}

	-- Sometimes I have to write things that aren't code
	use {'junegunn/goyo.vim'}
	use {'junegunn/limelight.vim'}
	use {'vimwiki/vimwiki'}
	use {'blindFS/vim-taskwarrior'}
	use {'tools-life/taskwiki'}

	-- Language specific plugins
	use {'simrat39/rust-tools.nvim'}
	use {'rust-lang/rust.vim'}
	use {'folke/lua-dev.nvim'}
	use {'ckipp01/stylua-nvim', run = 'cargo install stylua'}

	use {
		-- LSP
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
		'nvim-lua/lsp-status.nvim',
		-- Completion
		'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		-- Snippets
		'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
			config = {function() require('config.lsp') end}
	}

	-- Treesitter is nice
	use {
		'nvim-treesitter/nvim-treesitter',
		as ='treesitter',
		run = ':TSUpdate',
		config = {function() require('config.treesitter') end},
	}
	use {'p00f/nvim-ts-rainbow', requires = 'treesitter'}

	-- Some nice quality of life and fun stuff
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	use {'windwp/nvim-autopairs', config = {function() require('nvim-autopairs').setup() end}}
	use {
		'folke/trouble.nvim',
		requires = 'devicons',
		config = {function() require('trouble').setup() end},
	}
	use {
		'folke/which-key.nvim',
		requires = 'devicons',
		config = {function() require('which-key').setup() end},
	}

	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = 'devicons',
		opt = false,
		config = function()
			require('lualine').setup({
				options = {
					globalstatus = true,
					theme = 'gruvbox',
				}
			})
		end
	}
end)

require('config.lsp')
