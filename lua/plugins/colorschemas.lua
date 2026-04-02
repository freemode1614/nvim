local transparent = true

return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      transparent_mode = transparent,
      contrast = "hard",
      dim_inactive = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = transparent,
      -- 自动切换: dark 用 mocha, light 用 latte
      background = {
        light = "latte",
        dark = "mocha",
      },
      dim_inactive = {
        enabled = true,
        percentage = 0.35,
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "wave",
      transparent = transparent,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      transparent = transparent,
      -- dim_inactive = true,
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      transparent = transparent,
    },
  },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "olimorris/onedarkpro.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    opts = {
      transparent = transparent,
      italic_comments = true,
      -- 亮色模式颜色覆盖，与 wezterm 主题协调
      colors = {
        bg = "#e8e4df",
        fg = "#1a1a1a",
        -- 调整其他颜色以确保对比度
        grey = "#616161",
        blue = "#1976d2",
        green = "#388e3c",
        cyan = "#00838f",
        red = "#d32f2f",
        yellow = "#f57c00",
        magenta = "#7b1fa2",
        pink = "#c2185b",
        orange = "#e65100",
      },
    },
  },
  { "AlexvZyl/nordic.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = transparent,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- 默认主题，实际主题由 auto-dark-mode 插件控制
      colorscheme = "kanagawa-lotus",
    },
  },
}
