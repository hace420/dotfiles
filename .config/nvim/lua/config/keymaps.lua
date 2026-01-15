-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


vim.keymap.set("n", "<leader>jr", function()
  local file = vim.fn.expand("%:t:r")
  vim.cmd("w")
  vim.cmd("botright vsplit | terminal javac % && java " .. file)
end, { desc = "Java compile & run (right terminal)" })


vim.keymap.set({ "n", "t" }, "<leader>jf", function()
  if vim.bo.buftype == "terminal" then
    vim.cmd("bd!")
  end
end, { desc = "Close terminal buffer" })
