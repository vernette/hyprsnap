return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").create_default_mappings()
    require("leap").opts.safe_labels = {}
  end,
}
