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
  { "scottmckendry/cyberdream.nvim", opts = {
    transparent = transparent,
    italic_comments = true,
  } },
  { "AlexvZyl/nordic.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "duskfox",
    },
  },
}
