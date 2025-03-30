return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    terminal = {
      enabled = true,
    },
    git = {
      enabled = true,
    },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
     _______. __    __  .______    _______ .______         .___  ___.      ___      .__   __. 
    /       ||  |  |  | |   _  \  |   ____||   _  \        |   \/   |     /   \     |  \ |  | 
   |   (----`|  |  |  | |  |_)  | |  |__   |  |_)  |       |  \  /  |    /  ^  \    |   \|  | 
    \   \    |  |  |  | |   ___/  |   __|  |      /        |  |\/|  |   /  /_\  \   |  . `  | 
.----)   |   |  `--'  | |  |      |  |____ |  |\  \----.   |  |  |  |  /  _____  \  |  |\   | 
|_______/     \______/  | _|      |_______|| _| `._____|   |__|  |__| /__/     \__\ |__| \__| 
                                                                                              
]],
      },
      sections = {
        {
          section = "header",
        },
        {
          section = "keys",
          gap = 1,
          padding = 1,
        },
        {
          section = "startup",
        },
        -- {
        --   section = "terminal",
        --   cmd = "ascii-image-converter ~/.config/nvim/logo/batman.jpeg -c -C",
        --   random = 10,
        --   pane = 2,
        --   ident = 4,
        --   height = 30,
        -- },
      },
    },
  },
}
