return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft["typescriptreact"] = { "eslint_d" }
      opts.linters_by_ft["typescript"] = { "eslint_d" }
      opts.linters_by_ft["javascript"] = { "eslint_d" }
      opts.linters_by_ft["javascriptreact"] = { "eslint_d" }
      opts.linters_by_ft["markdown"] = { "markdownlint-cli2" }
      opts.linters_by_ft["markdown.md"] = { "markdownlint-cli2" }
      opts.linters_by_ft["json"] = { "eslint" }
      opts.linters_by_ft["*"] = { "cspell" }
    end,
  },
}
