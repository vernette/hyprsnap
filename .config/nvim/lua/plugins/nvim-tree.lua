return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 20,
        side = "left",
      },
      renderer = {
        group_empty = true,
        indent_width = 1,
        indent_markers = {
          enable = true,
          inline_arrows = false,
        },
      },
      filters = {
        dotfiles = false,
      },
    })
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
    vim.keymap.set("n", "<C-l>", ":NvimTreeResize +1<CR>")
    vim.keymap.set("n", "<C-h>", ":NvimTreeResize -1<CR>")
  end,
}
