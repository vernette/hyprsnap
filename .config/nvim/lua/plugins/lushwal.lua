return {
  "oncomouse/lushwal.nvim",
  cmd = { "LushwalCompile" },
  dependencies = {
    { "rktjmp/lush.nvim" },
    { "rktjmp/shipwright.nvim" },
  },
  config = function()
    vim.g.lushwal_configuration = {
      compile_to_vimscript = false,
      addons = {
        bufferline_nvim = true,
        gitsigns_nvim = true,
        indent_blankline_nvim = true,
        lualine = true,
        which_key_nvim = true,
        nvim_tree_lua = true,
        telescope_nvim = true,
      },
    }
  end,
}
