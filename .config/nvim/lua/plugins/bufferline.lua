return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", {})
    vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", {})
  end,
}
