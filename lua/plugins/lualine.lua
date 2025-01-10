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
    opts.options.section_separators = { left = " ", right = " " }
    opts.options.component_separators = { left = "|", right = "|" }
    opts.sections.lualine_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        symbols = {
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
          error = icons.diagnostics.Error,
        },
        separator = "|",
        padding = { left = 2, right = 0 },
      },
      {
        function()
          return vim.g.remote_neovim_host and ("Remote: %s"):format(vim.uv.os_gethostname()) or ""
        end,
        padding = { right = 1, left = 1 },
        separator = { left = " ", right = " " },
      },
    }
    opts.sections.lualine_c = {
      LazyVim.lualine.root_dir(),
      { "filename", path = 1, separator = "" },
      { "filetype", icon_only = true, separator = "", padding = { left = 0, right = 0 } },
    }

    opts.sections.lualine_x = {}
    opts.sections.lualine_y = {
      { "filesize", padding = { left = 1, right = 1 } },
    }

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
        "snacks_dashboard",
        "neo-tree",
      },
    }
  end,
}
