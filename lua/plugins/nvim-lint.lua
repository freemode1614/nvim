return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft["typescriptreact"] = { "eslint" }
      opts.linters_by_ft["typescript"] = { "eslint" }
      opts.linters_by_ft["javascript"] = { "eslint" }
      opts.linters_by_ft["javascriptreact"] = { "eslint" }
      opts.linters_by_ft["markdown"] = { "markdownlint-cli2" }
      opts.linters_by_ft["markdown.md"] = { "markdownlint-cli2" }
      opts.linters_by_ft["json"] = { "jsonlint" }
      -- opts.linters_by_ft["*"] = { "cspell" }
    end,
  },
}
