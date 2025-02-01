return {
  {
    "vuki656/package-info.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {
        "<leader>ns",
        function()
          require("package-info").show()
        end,
        desc = "Show dependency versions",
      },
      {
        "<leader>nc",
        function()
          require("package-info").hide()
        end,
        desc = "Hide dependency versions",
      },
      {
        "<leader>nt",
        function()
          require("package-info").toggle()
        end,
        desc = "Toggle dependency versions",
      },
    },
    config = function()
      require("package-info").setup({
        colors = {
          up_to_date = "#3C4048", -- Text color for up to date dependency virtual text
          outdated = "#d19a66", -- Text color for outdated dependency virtual text
          invalid = "#ee4b2b", -- Text color for invalid dependency virtual text
        },
        package_manager = "pnpm",
        autostart = true,
        hide_unstable_versions = true,
      })
    end,
  },
}
