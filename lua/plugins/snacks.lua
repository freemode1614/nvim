return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      enabled = true,
      jump = {
        jumplist = false,
      },
    },
    bigfile = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    terminal = { enabled = true },
    git = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[BATMAN]],
        keys = false,
      },
    },
    explorer = {
      enabled = false,
    },
    image = {},
    lazygit = {},
    indent = {},
  },
}