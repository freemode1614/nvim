return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers["ts_ls"] = nil
  end,
}
