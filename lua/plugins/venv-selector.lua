return {
  "linux-cultist/venv-selector.nvim",
  enabled = false,
  branch = "regexp",
  opts = {
    name = { "venv", ".venv" },
    auto_refresh = true,
  },
  event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  lazy = true,
  keys = {
    { ",v", "<cmd>VenvSelect<cr>" },
  },
}
