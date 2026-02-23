return {
  "saghen/blink.cmp",
  -- enable = false,
  dependencies = {
    "Kaiser-Yang/blink-cmp-avante",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    completion = {
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
    },
  },
}
