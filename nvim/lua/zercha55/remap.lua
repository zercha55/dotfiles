vim.g.mapleader = " "
local keymap = vim.keymap
-- explorer view
keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- new tab
keymap.set("n", "<leader>t", ":tabedit<CR>")
local function paste_disabled()
  print('Pasting is not allowed in normal mode')
end

-- disable pasting in normal mode
-- keymap.set("n", "p", paste_disabled, {noremap = true})
-- keymap.set("n", "P", paste_disabled, {noremap = true})

