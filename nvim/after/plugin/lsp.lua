local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
  'jedi_language_server',
})
