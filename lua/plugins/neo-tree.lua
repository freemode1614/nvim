return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      {
        "s1n7ax/nvim-window-picker",
        version = "2.*",
        config = function()
          require("window-picker").setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { "neo-tree", "neo-tree-popup", "notify" },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { "terminal", "quickfix" },
              },
            },
          })
        end,
      },
      "saifulapm/neotree-file-nesting-config",
    },
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
            ["<"] = "open_in_system_explorer",
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
    config = function(_, opts)
      -- Adding rules from plugin
      -- opts.nesting_rules = require("neotree-file-nesting-config").nesting_rules
      require("neo-tree").setup(opts)
    end,
  },
}
