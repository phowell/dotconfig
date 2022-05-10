-- General Settings for NeoVim

-- Basic Look And Feel
vim.g.gruvbox_bold = true
vim.g.gruvbox_italics = true
-- vim.cmd('colorscheme gruvbox8')
vim.cmd('colorscheme onenord')
vim.opt.termguicolors = true
vim.cmd 'hi Normal ctermbg=NONE guibg=NONE'

-- Neovide
vim.opt.guifont = 'FiraCode Nerd Font Mono:h18'
vim.api.nvim_set_var('neovide_cursor_vfx_mode', 'railgun')
-- vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_transparency = 0.9
vim.g.neovide_cursor_antialiasing= "true"
vim.g.neovide_cursor_vfx_particle_lifetime = 1.5
vim.g.neovide_cursor_vfx_particle_density = 7.0
vim.g.neovide_remember_window_size = true

-- General Settings
-- vim.g.nvim_set_option('encoding', 'UTF-8')
vim.g.loaded_python_provider=0
vim.g.loaded_perl_provider=0
vim.g.python_host_prog=''
vim.g.python3_host_prog='~/.venv/neovim/bin/python'

vim.g.syntax_on = true
vim.g.syntax_enable = true
vim.g.mouse = 'a'
vim.g.ruler = true
vim.g.hidden = true
vim.opt.cursorline = true
vim.opt.list = true
vim.api.nvim_set_option('listchars', 'tab:▸ ,eol:¬')
vim.opt.shortmess:append 'c'

vim.opt.number = true
vim.opt.signcolumn = 'yes'

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.ignorecase = true
vim.o.smartcase = true

-- Make indenting make sense
local indent = 2
vim.opt.expandtab = false
vim.opt.shiftwidth = indent
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.smartindent = true

-- Switch off relative numbers in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {pattern = "*", callback = function() vim.opt.relativenumber = false end,})
vim.api.nvim_create_autocmd("InsertLeave", {pattern = "*", callback = function() vim.opt.relativenumber = true end,})
