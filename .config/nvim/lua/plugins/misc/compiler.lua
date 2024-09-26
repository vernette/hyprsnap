return {
  {
    "Zeioth/compiler.nvim",
    cmd = {
      "CompilerOpen",
      "CompilerToggleResults",
      "CompilerRedo",
    },
    dependencies = {
      "stevearc/overseer.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
  },
  {
    "stevearc/overseer.nvim",
    cmd = {
      "CompilerOpen",
      "CompilerToggleResults",
      "CompilerRedo",
    },
    config = {
      task_list = {
        min_height = 10,
        max_height = 0.8,
        min_width = 10,
        max_width = 0.6,
      },
    },
  },
}
