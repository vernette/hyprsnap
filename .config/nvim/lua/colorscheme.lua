local status_ok, lushwal = pcall(require, "lushwal")
if not status_ok then
  return
end

vim.cmd("colorscheme lushwal")
lushwal.add_reload_hook({
  vim.cmd("LushwalCompile"),
})

local status_ok, _ = pcall(require, "transparent")
if not status_ok then
  return
end

vim.cmd("TransparentEnable")
