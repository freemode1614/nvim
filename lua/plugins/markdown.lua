return {
  -- {
  --   "tenxsoydev/vim-markdown-checkswitch",
  --   config = function()
  --     vim.g.md_checkswitch_style = "cycle"
  --   end,
  -- },
  {
    "bullets-vim/bullets.vim",
    config = function()
      vim.g.bullets_enabled_file_types = { "markdown", "text", "gitcommit", "scratch" }
    end,
  },
  -- {
  --   "yelog/marklive.nvim",
  --   dependencies = { "nvim-treesitter/nvim-treesitter" },
  --   lazy = true,
  --   ft = "markdown",
  --   opt = {},
  -- },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
