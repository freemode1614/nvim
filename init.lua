if vim.g.neovide then
  vim.print(vim.g.neovide_version)
  vim.o.guifont = "Maple Mono NF CN:h18"
  vim.g.neovide_window_blurred = true
  vim.g.neovide_cursor_animation_length = 0

  -- local alpha = function()
  --   return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  -- end
  -- -- g:neovide_opacity should be 0 if you want to unify transparency of content and title bar.
  -- vim.g.neovide_opacity = 0.0
  -- vim.g.transparency = 0.8
  -- vim.g.neovide_background_color = "#0f1117" .. alpha()
end

-- bootstrap lazy. nvim, LazyVim and your plugins
require("config.lazy")
