return {
  {
    "m4xshen/autoclose.nvim",
    lazy = false,
    config = function()
      require("autoclose").setup({
        options = {
          disabled_filetypes = {},
          disable_when_touch = true,
          pair_spaces = true,
        },
      })
    end,
  },
  {
    "folke/which-key.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("which-key").setup({
        win = {
          border = "rounded",
          padding = { 1, 1, 1, 1 },
        },
      })
    end,
  },
  {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function()
      require("Comment").setup({
        padding = true,
        toggler = { line = "<leader>/" },
        opleader = { line = "<leader>/" },
      })
    end,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    cmd = "Trouble",
    opts = {},
  },
  {
    "mistricky/codesnap.nvim",
    lazy = false,
    build = "make",
    config = function()
      require("codesnap").setup({
        save_path = "~/Pictures/screenshots/code",
        border = "rounded",
        has_breadcrumbs = false,
        has_line_number = true,
        bg_theme = "grape",
        bg_x_padding = 122,
        bg_y_padding = 52,
        bg_padding = nil,
        watermark = "",
      })
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        hide_numbers = true,
      })
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
  { "famiu/bufdelete.nvim" },
}
