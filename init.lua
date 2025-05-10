vim.opt.number = true
vim.g.mapleader = "\\"

-- Run current file with Python
vim.keymap.set("n", "<leader>r", ":!python3 %<CR>", { noremap = true, silent = false })

