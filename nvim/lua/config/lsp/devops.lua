local lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp['ansiblels'].setup({capabilities = capabilities})

lsp['dockerls'].setup({capabilities = capabilities})
