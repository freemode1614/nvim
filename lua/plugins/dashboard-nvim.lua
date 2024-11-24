local os = require("os")

return {
  {
    "nvimdev/dashboard-nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.starter",
    opts = function(_, opts)
      opts.footer = os.getenv("PWD")
    end,
    config = false,
  },
}
