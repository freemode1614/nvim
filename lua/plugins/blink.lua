return {
  "saghen/blink.cmp",
  -- enable = false,
  dependencies = {
    "Kaiser-Yang/blink-cmp-avante",
    -- ... Other dependencies
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
    -- sources = {
    --   default = {
    --     "avante",
    --     "lsp",
    --     "path",
    --     "luasnip",
    --     "buffer",
    --   },
    --   providers = {
    --     avante = {
    --       module = "blink-cmp-avante",
    --       name = "Avante",
    --       opts = {},
    --     },
    --   },
    -- },
  },
}
