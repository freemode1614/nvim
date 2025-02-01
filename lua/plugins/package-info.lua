return {
  {
    "vuki656/package-info.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {
        "<leader>ms",
        function()
          require("package-info").show()
        end,
        desc = "Show dependency versions",
      },
      {
        "<leader>mc",
        function()
          require("package-info").hide()
        end,
        desc = "Hide dependency versions",
      },
      {
        "<leader>mt",
        function()
          require("package-info").toggle()
        end,
        desc = "Toggle dependency versions",
      },
      {
        "<leader>mu",
        function()
          require("package-info").update()
        end,
        desc = "Update dependency on the line",
      },
      {
        "<leader>mi",
        function()
          require("package-info").update()
        end,
        desc = "Install dependency on the line",
      },
      {
        "<leader>md",
        function()
          require("package-info").update()
        end,
        desc = "Delete dependency on the line",
      },
      {
        "<leader>mp",
        function()
          require("package-info").change_version()
        end,
        desc = "Install a different dependency versions",
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
