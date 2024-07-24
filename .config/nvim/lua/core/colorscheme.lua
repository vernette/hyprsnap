-- If lushwal is loaded successfully, use it. Otherwise, use different colorscheme
local status_ok, lushwal = pcall(require, "lushwal")
if status_ok then
  vim.cmd("colorscheme lushwal")
  lushwal.add_reload_hook({
    vim.cmd("LushwalCompile"),
  })
  vim.cmd("TransparentEnable")
else
  vim.cmd("colorscheme tokyonight")
end
