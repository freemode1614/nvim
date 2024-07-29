return {
  {
    "davidmh/cspell.nvim",
  },
  {
    "nvimtools/none-ls.nvim",
    event = "LazyFile",
    enabled = false,
    opts = function(_, opts)
      local code_spell = require("cspell")
      local nls = require("null-ls")
      opts.root_dir = opts.root_dir
        or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
      -- All we want is just cspell code actions
      opts.sources = {
        code_spell.code_actions,
      }
    end,
  },
}
