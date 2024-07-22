local fs = require("vim.fs")
local os = require("os")

return {
  {
    "nvimdev/dashboard-nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.starter",
    opts = function(_, opts)
      local logo = table.concat({
        "######## ########  ######## ########    ##     ##  #######  ########  ######## ",
        "##       ##     ## ##       ##          ###   ### ##     ## ##     ## ##       ",
        "##       ##     ## ##       ##          #### #### ##     ## ##     ## ##       ",
        "######   ########  ######   ######      ## ### ## ##     ## ##     ## ######   ",
        "##       ##   ##   ##       ##          ##     ## ##     ## ##     ## ##       ",
        "##       ##    ##  ##       ##          ##     ## ##     ## ##     ## ##       ",
        "##       ##     ## ######## ########    ##     ##  #######  ########  ######## ",
      }, "\n")

      opts.header = logo
      opts.items = {}
      opts.footer = os.getenv("PWD")
    end,
    config = false,
  },
}
