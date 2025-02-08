--[[
--
-- 🚧 这个插件是用来链接远程开发环境的。目前还处于 alpha 阶段。
-- 谨慎使用
--
--]]

return {
  "chipsenkbeil/distant.nvim",
  branch = "v0.3",
  config = function()
    require("distant"):setup()
  end,
}
