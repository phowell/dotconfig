local wk = require('which-key')

wk.register({
	b = {
		name = 'Buffer',
		n = {'<cmd>BufferLineMoveNext<cr>', 'Next Buffer'},
		p = {'<cmd>BufferLineMovePrev<cr>', 'Previous Buffer'},
		b = {'<cmd>BufferLinePick<cr>', 'Pick Buffer to Go'},
		x = {'<cmd>BufferLinePickClose<cr>', 'Pick Buffer to Close'},
		h = {'<cmd>BufferLineCloseLeft<cr>', 'Close Left Buffer'},
		l = {'<cmd>BufferLineCloseRight<cr>', 'Close Right Buffer'},
	},
	f = {
		name = 'File',
		f = {'<cmd>Telescope find_files<cr>', 'Find File'},
		b = {'<cmd>Telescope buffers<cr>', 'Find Buffer'},
		r = {'<cmd>Telescope oldfiles<cr>', 'Open Recent File'},
		g = {'<cmd>Telescope live-grep<cr>', 'Find by grep'},
		p = {'<cmd>Telescope project<cr>', 'Find Projects'},
	},

	g = {
	},

	p = {
		name = 'Plugins',
		c = {'<cmd>PackerCompile<cr>', 'Compile Plugins'},
		s = {'<cmd>PackerSync<cr>', 'Update & Compile Plugins'},
		u = {'<cmd>PackerUpdate<cr>', 'Update Plugins'},
	},

	W = {
		name = "Window",
		h = {'<C-w>h', 'Go to left window'},
		j = {'<C-w>j', 'Go to down window'},
		k = {'<C-w>k', 'Go to up window'},
		l = {'<C-w>l', 'Go to right window'},
		H = {'<C-w>H', 'Move window left'},
		J = {'<C-w>J', 'Move window down'},
		K = {'<C-w>K', 'Move window up'},
		L = {'<C-w>L', 'Move window right'},
		s = {'<C-w>s', 'Split window horizontally'},
		v = {'<C-w>v', 'Split window vertically'},
		x = {'<C-w>x', 'Swap current window with next'},
		q = {'<C-w>q', 'Quit current window'},
		w = {'<C-w>w', 'Switch Window'},
	},

	w = {
		name = 'Wiki',
		w = {'<Plug>VimwikiIndex', 'Wiki Index'},
		d = {
			i={'<cmd>VimwikiDiaryIndex', 'Wiki Diary Index'},
			n={'<cmd>VimwikiMakeDiaryNote', 'Wiki Diary Today'},
		},
	}
}, {prefix = '<leader>'})
