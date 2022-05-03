local lsp = require('lspconfig')
local luadev = require('lua-dev').setup()

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp['sumneko_lua'].setup(luadev, {capabilities = capabilities})
