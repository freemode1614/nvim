--[[
--
-- Don't want black for python format, so we remove "black" lsp here.
--
--]]

local black_lsp = "black"

return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    local ensure_installed = {}

    for i = 1, #opts.ensure_installed do
      if opts.ensure_installed[i] ~= black_lsp then
        table.insert(ensure_installed, opts.ensure_installed[i])
      end
    end

    opts.ensure_installed = ensure_installed
  end,
}
