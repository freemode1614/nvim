return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Disable vtsls format
      vtsls = {
        init_options = {
          provideFormatter = false,
        },
      },
    },
  },
}
