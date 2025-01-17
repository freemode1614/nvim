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
