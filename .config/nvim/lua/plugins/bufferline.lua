return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          highlight = "Directory",
          separator = true,
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
