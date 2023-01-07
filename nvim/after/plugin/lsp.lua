local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.set_preferences({
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp.setup()
lsp.ensure_installed({
  'html',
  'cssls',
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
  'jedi_language_server',
})

vim.diagnostic.config({
  virtual_text = true
})

