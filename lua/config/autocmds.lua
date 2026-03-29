-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*" },
  callback = function()
    pcall(vim.cmd.TSBufEnable, "highlight")
    -- vim.cmd("TSBufEnable highlight")
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "typescriptreact", "typescript" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = false -- 覆盖默认的 true
  end,
})

-- 光标行高亮 - 与 wezterm 主题保持一致
local function set_cursorline_colors()
  vim.cmd("hi Normal ctermbg=none")
  
  -- nightfox (dark) / dawnfox (light)
  if vim.o.background == "light" then
    -- dawnfox 主题
    vim.cmd("hi CursorLine guibg=#e8e0d8")
    vim.cmd("hi CursorLineNr guifg=#625c87 guibg=#e8e0d8")
  else
    -- nightfox 主题
    vim.cmd("hi CursorLine guibg=#2b3b51")
    vim.cmd("hi CursorLineNr guifg=#71839b guibg=#2b3b51")
  end
  
  -- 光标颜色
  vim.cmd("hi Cursor guibg=#719cd6 guifg=#192330")
end

-- VimEnter 时设置
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = { "*" },
  callback = set_cursorline_colors,
})

-- ColorScheme 切换时也设置（auto-dark-mode 切换主题时触发）
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = { "*" },
  callback = set_cursorline_colors,
})

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = { "*" },
  callback = function()
    vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. "#3C4048")
    vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. "#d19a66")
    vim.cmd([[highlight PackageInfoInvalidVersion guifg=]] .. "#ee4b2b")
  end,
})
