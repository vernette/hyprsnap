return {
  "m4xshen/autoclose.nvim",
  event = "InsertEnter",
  opts = {
    options = {
      disabled_filetypes = { "text", "markdown" },
      disable_when_touch = true,
      pair_spaces = true,
    },
  },
}
