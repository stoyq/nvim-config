
-- <leader>rp for Python scripts
vim.keymap.set("n", "\\rp", function()
  vim.cmd("w")
  vim.cmd("split")
  vim.cmd("resize 15")
  -- Pause after execution
  local cmd = "terminal python3 " .. vim.fn.expand("%") .. "; read -n 1 -s -r -p 'Press any key to continue...'"
  vim.cmd(cmd)
end, { desc = "Run Python with pause" })



vim.keymap.set("n", "<leader>s.", function()
  require("telescope.builtin").live_grep({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Live Grep (current dir)" })


-- <leader>rr for Rscripts
vim.keymap.set("n", "\\rr", function()
  vim.cmd("w")
  vim.cmd("split")
  vim.cmd("resize 15")
  -- Pause after execution
  local cmd = "terminal Rscript " .. vim.fn.expand("%") .. "; read -n 1 -s -r -p 'Press any key to continue...'"
  vim.cmd(cmd)
end, { desc = "Run Rscript with pause" })
