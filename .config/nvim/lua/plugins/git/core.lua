return {
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewFileHistory",
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = true,
  },
}
