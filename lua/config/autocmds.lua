-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*" },
  callback = function()
    vim.cmd("TSBufEnable highlight")
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "typescriptreact", "typescript" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = { "*" },
  callback = function()
    vim.cmd("hi Normal ctermbg=none")
  end,
})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = { "*" },
  callback = function()
    vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. "#3C4048")
    vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. "#d19a66")
    vim.cmd([[highlight PackageInfoInvalidVersion guifg=]] .. "#ee4b2b")
  end,
})
