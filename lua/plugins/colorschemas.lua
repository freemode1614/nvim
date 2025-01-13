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
      flavour = "macchiato",
      transparent_background = transparent,
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      light_style = "day",
      transparent = transparent,
      styles = {
        siderbars = "transparent",
      },
      dim_inactive = true,
      lualine_bold = true,
      siderbars = { "Neo-tree" },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
