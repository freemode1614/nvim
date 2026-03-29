-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here

-- ============================================
-- 自动检测终端主题并切换 nvim 背景
-- ============================================

-- 根据 wezterm 设置的环境变量自动切换 light/dark 模式
local function set_background_from_terminal()
  -- 优先读取 wezterm 发送的 NVIM_BACKGROUND 环境变量
  local nvim_bg = os.getenv("NVIM_BACKGROUND")
  if nvim_bg == "light" then
    vim.o.background = "light"
  elseif nvim_bg == "dark" then
    vim.o.background = "dark"
  else
    -- 回退：检测 COLORFGBG 环境变量
    local colorfgbg = os.getenv("COLORFGBG")
    if colorfgbg then
      local bg = colorfgbg:match("^%d+;(%d+)$")
      if bg then
        local bg_num = tonumber(bg)
        -- 0-6 是深色，7-15 是浅色，232-255 是灰度
        if bg_num >= 7 and bg_num <= 15 then
          vim.o.background = "light"
          return
        elseif bg_num >= 232 and bg_num <= 255 then
          -- 灰度颜色
          if bg_num >= 244 then
            vim.o.background = "light"
            return
          end
        end
      end
    end
    -- 默认使用 dark
    vim.o.background = "dark"
  end
end

-- 在 nvim 启动时检测
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = set_background_from_terminal,
})

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
