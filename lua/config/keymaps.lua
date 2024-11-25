-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Snacks = require("snacks")

vim.keymap.set("n", "<C-/>", function()
  terminal(nil, { border = "rounded" })
end, { desc = "Term with border" })

vim.keymap.set("n", "<C-S>", "<CMD>wa<CR>", { desc = "Save all files" })
vim.keymap.set("i", "<C-S>", "<CMD>wa<CR>", { desc = "Save all files" })
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
