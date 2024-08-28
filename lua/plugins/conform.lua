return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    local local_formatters_by_ft = {
      typescript = { "eslint" },
      javascript = { "eslint" },
      typescriptreact = { "eslint" },
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      python = function(bufnr)
        if require("conform").get_formatter_info("ruff_format", bufnr).available then
          return { "ruff_format" }
        else
          return { "isort", "black" }
        end
      end,
      handlebars = { "djlint" },
      -- ["*"] = { "codespell" },
      ["_"] = { "trim_whitespace" },
    }

    opts.formatters_by_ft = opts.formatters_by_ft or {}

    for ft, formatter in ipairs(local_formatters_by_ft) do
      opts.formatters_by_ft[ft] = formatter
    end
  end,
}
