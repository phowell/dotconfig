local lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp['taplo'].setup({capabilities = capabilities})

-- lsp['prosemd_lsp'].setup({capabilities = capabilities})
