return {
  {
    "saghen/blink.cmp",
    ---@param opts blink.cmp.Config | { sources: { compat: string[] } }
    config = function(_, opts)
      opts.completion.list.selection = {
        preselect = false,
        auto_insert = false,
      }
      require("blink.cmp").setup(opts)
    end,
  },
}
