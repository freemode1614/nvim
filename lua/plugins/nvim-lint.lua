return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft["json"] = { "eslint" }
      vim.list_extend(opts.linters_by_ft["json"] or {}, { "eslint" })
      opts.linters_by_ft["*"] = { "cspell" }
    end,
  },
}
