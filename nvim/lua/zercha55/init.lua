require("zercha55.remap")
local opt = vim.opt

opt.title = true
opt.cursorline = true -- highlights the current line
opt.termguicolors = true -- enable 2 bit RGB colors
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.background = 'dark'
opt.number = true
opt.relativenumber = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.hlsearch = false -- add highlight for previous search term
opt.incsearch = true -- add highlight for current search term
opt.smartindent = true
opt.wrap = true -- no line wrapping
opt.swapfile = false -- creates a swap file
opt.backup = false
opt.scrolloff = 8
opt.path:append { '**' } -- Finding files - Search down into subfolders
opt.wildignore:append { '*/node_modules/*' }
opt.undofile = true -- persistent undo
opt.ignorecase = true
opt.smartcase = true
opt.backspace = { 'start', 'eol', 'indent' }
opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
opt.splitright = true
opt.splitbelow = true
opt.shell = 'fish'
opt.colorcolumn = "80"

-- highlight yanked text for 100ms using the "Visual" highlight group
vim.cmd([[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]])

-- sync wsl2 vim clipboard with windows
vim.cmd([[
  if system('uname -r') =~ "microsoft"
    augroup Yank
    autocmd!
    autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
    augroup END
  endif
]])

