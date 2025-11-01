return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    opts = {
      -- recommanded config for better UI
      hide_root_node = true,
      retain_hidden_root_indent = true,
      filesystem = {
        filtered_items = {
          show_hidden_count = true,
          never_show = {
            ".DS_Store",
          },
          hide_dotfiles = false,
        },
        window = {
          mappings = {
            -- ["<"] = "open_in_system_explorer",
          },
        },
      },
      follow_current_file = {
        enabled = true, -- This will find and focus the file in the active buffer every time
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
      },
      window = {
        position = "float",
        popup = {
          size = { height = "80%", width = "60" },
          position = "5",
        },
      },
    },
  },
}
