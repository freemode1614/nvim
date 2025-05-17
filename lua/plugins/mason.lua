--[[
--
-- Don't want black for python format, so we remove "black" lsp here.
--
--]]

local black_lsp = "black"

return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
    opts = function(_, opts)
      local new_ensure_installed = {}
      local ensure_installed = opts.ensure_installed or {}

      for i = #ensure_installed, 1, -1 do
        if ensure_installed[i] ~= black_lsp then
          new_ensure_installed[i] = ensure_installed[i]
        end
      end

      opts.ensure_installed = new_ensure_installed
    end,
  },
}
