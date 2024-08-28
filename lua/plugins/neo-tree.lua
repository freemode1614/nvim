return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    opts = {
      window = {
        position = "float",
        popup = {
          size = { height = "80%", width = "60" },
          position = "5",
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
}
