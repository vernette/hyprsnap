vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "79"
vim.opt.fillchars = { eob = " " }
vim.opt.fileencoding = "utf-8"
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.numberwidth = 2
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.so = 10
vim.opt.sidescrolloff = 40
vim.opt.splitkeep = "screen"
vim.opt.laststatus = 3
vim.opt.inccommand = "split"
-- Uncomment the following line to set the font for Neovide
-- vim.opt.guifont = "JetBrainsMono Nerd Font"
-- Recognize files with the .http extension as HTTP files
vim.filetype.add({
  extension = {
    ["http"] = "http",
  },
})
