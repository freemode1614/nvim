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
  },
}
