local function set_fallback_colorscheme()
  local fallback_colorscheme = "tokyonight"
  vim.cmd("colorscheme " .. fallback_colorscheme)
end

-- If lushwal is loaded successfully, use it. Otherwise, use fallback colorscheme
local status_ok, lushwal = pcall(require, "lushwal")
if status_ok then
  local setup_ok, err = pcall(function()
    vim.cmd("colorscheme lushwal")
    lushwal.add_reload_hook({
      vim.cmd("LushwalCompile"),
    })
    vim.cmd("TransparentEnable")
  end)

  if not setup_ok then
    set_fallback_colorscheme()
  end
else
  set_fallback_colorscheme()
end
