local lsp = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp['html'].setup({capabilities = capabilities})

lsp['tsserver'].setup({capabilities = capabilities})
