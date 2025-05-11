--[[
--
-- Don't want black for python format, so we remove "black" lsp here.
--
--]]

local black_lsp = "black"

return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
