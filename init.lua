vim.opt.number = true
vim.g.mapleader = "\\"

-- Run current file with Python
vim.keymap.set("n", "<leader>r", ":!python3 %<CR>", { noremap = true, silent = false })

-- Toggle between terminal and code with Ctrl + t
-- vim.keymap.set('t', '<C-t>', [[<C-\><C-n><C-w>w]], { noremap = true })
-- vim.keymap.set('n', '<C-t>', [[<C-w>w]], { noremap = true })
-- From terminal: exit to normal mode and switch
vim.keymap.set('t', '<C-t>', [[<C-\><C-n><C-w>w]], { noremap = true })

-- From normal mode: switch to terminal and enter insert mode
vim.keymap.set('n', '<C-t>', function()
  vim.cmd("wincmd w")       -- move to other window
  if vim.bo.buftype == "terminal" then
    vim.cmd("startinsert")  -- enter terminal input mode
  end
end, { noremap = true })

