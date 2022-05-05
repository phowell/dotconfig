local wk = require('which-key')

wk.register({
	f = {
		name = 'File',
		f = {'<cmd>Telescope find_files<cr>', 'Find File'},
		b = {'<cmd>Telescope buffers<cr>', 'Find Buffer'},
		r = {'<cmd>Telescope oldfiles<cr>', 'Open Recent File'},
		g = {'<cmd>Telescope live-grep<cr>', 'Find by grep'},
		p = {'<cmd>Telescope project<cr>', 'Find Projects'},
	},

	w = {},
}, {prefix = '<leader>'})
