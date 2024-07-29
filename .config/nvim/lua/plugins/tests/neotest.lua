return {
  "nvim-neotest/neotest",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python",
  },
  config = function()
    require("neotest").setup({ adapters = { require("neotest-python") } })
  end,
}
