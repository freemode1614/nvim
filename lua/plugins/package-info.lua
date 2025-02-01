return {
  {
    "vuki656/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    lazy = false,
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
        icons = {
          enable = true, -- Whether to display icons
          style = {
            up_to_date = "|  ", -- Icon for up to date dependencies
            outdated = "|  ", -- Icon for outdated dependencies
            invalid = "|  ", -- Icon for invalid dependencies
          },
        },
        autostart = true, -- Whether to autostart when `package.json` is opened
        hide_up_to_date = false, -- It hides up to date versions when displaying virtual text
        hide_unstable_versions = false, -- It hides unstable versions from version list e.g next-11.1.3-canary3
        -- Can be `npm`, `yarn`, or `pnpm`. Used for `delete`, `install` etc...
        -- The plugin will try to auto-detect the package manager based on
        -- `yarn.lock` or `package-lock.json`. If none are found it will use the
        -- provided one, if nothing is provided it will use `yarn`
        package_manager = "pnpm",
      })
    end,
  },
}
