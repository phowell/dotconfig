local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print "---------------------------------------------------------"
	print "Press Enter to install packer and plugins."
	print "After install -- close and reopen Neovim to load configs!"
	print "---------------------------------------------------------"
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand to reload neovim when you save plugins.lua
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
	return
end

packer.startup(function(use)
	-- Bootstrap
	use {'wbthomason/packer.nvim', opt = true}
	use {'lewis6991/impatient.nvim'}

	-- Prettiness
	use {'lifepillar/vim-gruvbox8'}
	use {'rmehri01/onenord.nvim',}
	use {'catppuccin/nvim',
		as = 'catpuccin',
		config = {function() require('config.theme') end},
	}

	use {'kyazdani42/nvim-web-devicons', as ='devicons'}

	-- Sometimes I have to write things that aren't code
	use {'junegunn/goyo.vim'}
	use {'junegunn/limelight.vim'}
	use {
		'vimwiki/vimwiki',
		setup = function()
			vim.g.vimwiki_list = {
				{
					path = '~/wiki',
					syntax = 'markdown',
					ext = '.md'
				}
			}
			vim.g.vimwiki_ext2syntax = {
				['.md'] = 'markdown',
				['.markdown'] = 'markdown',
				['.mdown'] = 'markdown',
			}
			vim.g.vimwiki_markdown_link_ext = 1
		end
	}
	use {'blindFS/vim-taskwarrior'}
	use {'tools-life/taskwiki',
		setup = function()
			vim.g.taskwiki_taskrc_location = '~/.config/task/taskrc'
			vim.g.taskwiki_data_location = '~/.local/share/task'
			vim.g.taskwiki_markup_syntax = 'markdown'
		end
	}
	use {'michal-h21/vimwiki-sync'}

	-- Language specific plugins
	use {'simrat39/rust-tools.nvim'}
	use {'rust-lang/rust.vim'}
	use {'folke/lua-dev.nvim'}
	use {'ckipp01/stylua-nvim'}
	use {'jmcantrell/vim-virtualenv',
		setup = function()
			vim.g.virtualenv_directory= '~/.venv'
		end
	}

	use {
		-- LSP
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
		'nvim-lua/lsp-status.nvim',
		'jose-elias-alvarez/null-ls.nvim',
		-- Completion
		'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		-- Snippets
		'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip',
			config = {function() require('config.lsp') end}
	}

	-- Treesitter is nice
	use {'nvim-treesitter/nvim-treesitter',
		as ='treesitter',
		run = ':TSUpdate',
		config = {function() require('config.treesitter') end},
	}
	use {'p00f/nvim-ts-rainbow', requires = 'treesitter'}


	-- Telescope & friends
	use {'nvim-telescope/telescope.nvim',
		as = 'telescope',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	use {'nvim-telescope/telescope-project.nvim',
		requires = 'telescope',
		config = {function() require('telescope').load_extension('project') end},
	}


	-- Some nice quality of life and fun stuff
	use {'windwp/nvim-autopairs', config = {function() require('nvim-autopairs').setup() end}}
	use {'lewis6991/gitsigns.nvim', config = {function() require('gitsigns').setup() end}}
	use {'folke/trouble.nvim',
		requires = 'devicons',
		config = {function() require('trouble').setup() end},
	}
	use {
		'folke/which-key.nvim',
		requires = 'devicons',
		config = {
			function()
				require('which-key').setup({
					plugins = {
						spelling = {
							enabled = true,
						}
					}
				})
			end
		},
	}

	use {'akinsho/bufferline.nvim',
		tag = 'v2.*',
		requires = 'devicons',
		config = { function() require('config.ui.buffer') end},
	}
	use {'nvim-lualine/lualine.nvim',
		requires = 'devicons',
		opt = false,
		config = { function() require('config.ui.statusline') end},
	}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if Packer_Bootstrap then
		require('packer').sync()
	end
end)

require('config.lsp')
