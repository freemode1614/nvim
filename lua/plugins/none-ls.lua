return {
  {
    "davidmh/cspell.nvim",
  },
  {
    "nvimtools/none-ls.nvim",
    event = "LazyFile",
    enabled = false,
    opts = function(_, opts)
      local cspell = require("cspell")
      opts.root_dir = opts.root_dir
        or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
      opts.sources = {
        cspell.code_actions,
      }
    end,
  },
}
