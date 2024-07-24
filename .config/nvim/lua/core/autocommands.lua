local autocmd = vim.api.nvim_create_autocmd

-- Dynamic terminal padding for kitty, you can apply the same logic for other terminals
autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0",
})

autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=10",
})
