vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
local function paste_disabled()
  print('Pasting is not allowed in normal mode')
end

-- disable pasting in normal mode
-- vim.keymap.set("n", "p", paste_disabled, {noremap = true})
-- vim.keymap.set("n", "P", paste_disabled, {noremap = true})

