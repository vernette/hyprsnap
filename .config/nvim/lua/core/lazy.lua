local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins.misc" },
    { import = "plugins.git" },
    { import = "plugins.completions" },
    { import = "plugins.lsp" },
    { import = "plugins.ui" },
    { import = "plugins.markdown" },
    { import = "plugins.colorschemes" },
    { import = "plugins.tests" },
    { import = "plugins.databases" },
  },
  install = { colorscheme = { "tokyonight" } },
  ui = { border = "rounded" },
  change_detection = { enabled = false },
  checker = {
    enabled = true,
    notify = false,
  },
})
