-- 分割字符串
local function split(str, reps)
  local resultStrList = {}
  string.gsub(str, "[^" .. reps .. "]+", function(w)
    table.insert(resultStrList, w)
  end)
  return resultStrList
end

return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local icons = LazyVim.config.icons
    opts.options.section_separators = { left = "", right = "" }
    opts.options.component_separators = { left = "", right = "" }
    opts.sections.lualine_c = {
      LazyVim.lualine.root_dir(),
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
        separator = "",
        padding = { left = 2, right = 0 },
      },
      { "filename", path = 1, separator = "" },
      { "filetype", icon_only = true, separator = "", padding = { left = 0, right = 0 } },
    }

    -- Remove
    table.remove(opts.sections.lualine_x, 1)
    table.remove(opts.sections.lualine_x, 2)

    table.insert(opts.sections.lualine_y, { "filesize", padding = { left = 1, right = 1 } })

    opts.sections.lualine_z = {
      function()
        return " " .. os.date("%X")
      end,
      function()
        local list = split(os.getenv("PWD"), "/")
        return LazyVim.config.icons.kinds.Folder .. list[#list]
      end,
    }

    opts.options.disabled_filetypes = {
      statusline = {
        "dashboard",
        "alpha",
        "starter",
        "fzf",
        "ministarter",
        "lazyterm",
      },
    }
  end,
}
