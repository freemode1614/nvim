return {
  "vuki656/package-info.nvim",
  requires = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("package-info").setup({
      package_manager = "pnpm",
    })
  end,
  keys = {
    {
      "<leader>ns",
      require("package-info").show(),
      desc = "Show dependency versions",
    },
    {
      "<leader>nc",
      require("package-info").hide(),
      desc = "Hide dependency versions",
    },
    {
      "<leader>nt",
      require("package-info").toggle(),
      desc = "Toggle dependency versions",
    },
  },
}
