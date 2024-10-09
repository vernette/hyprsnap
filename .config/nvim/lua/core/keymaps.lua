local opts = {
  noremap = true,
  silent = true,
}

local keymap = vim.api.nvim_set_keymap

local function keymap_with_desc(mode, lhs, rhs, desc)
  local opts_with_desc = vim.tbl_extend("force", opts, { desc = desc })
  if type(command) == "string" then
    keymap(mode, bind, command, opts_with_desc)
  else
    vim.keymap.set(mode, lhs, rhs, opts_with_desc)
  end
end

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Base --

-- Normal --
-- Better window navigation
keymap_with_desc("n", "<C-h>", "<C-w>h", "Move left")
keymap_with_desc("n", "<C-j>", "<C-w>j", "Move down")
keymap_with_desc("n", "<C-k>", "<C-w>k", "Move up")
keymap_with_desc("n", "<C-l>", "<C-w>l", "Move right")

-- Resize with arrows
keymap_with_desc("n", "<C-Up>", ":resize +2<CR>", "Resize window up")
keymap_with_desc("n", "<C-Down>", ":resize -2<CR>", "Resize window down")
keymap_with_desc("n", "<C-Left>", ":vertical resize -2<CR>", "Resize window left")
keymap_with_desc("n", "<C-Right>", ":vertical resize +2<CR>", "Resize window right")

-- Navigate buffers
keymap_with_desc("n", "<S-l>", ":bnext<CR>", "Next buffer")
keymap_with_desc("n", "<S-h>", ":bprevious<CR>", "Previous buffer")

-- Insert --
-- Press jk fast to exit insert mode
keymap_with_desc("i", "jk", "<ESC>", "Exit insert mode")

-- Plugins --

-- NvimTree
keymap_with_desc("n", "<C-n>", ":NvimTreeToggle<CR>", "Toggle NvimTree")
keymap_with_desc("n", "<leader>e", ":NvimTreeFocus<CR>", "Focus NvimTree")

-- Telescope
keymap_with_desc("n", "<leader>th", ":Telescope colorscheme<CR>", "Choose colorscheme")
keymap_with_desc("n", "<leader>f", ":Telescope find_files<CR>", "Find files")
keymap_with_desc("n", "<leader>gr", ":Telescope live_grep<CR>", "Live grep")
keymap_with_desc("n", "<leader>rf", ":Telescope oldfiles<CR>", "Recent files")
keymap_with_desc("n", "<leader>km", ":Telescope keymaps<CR>", "Show keymaps")
keymap_with_desc("n", "<leader>b", ":Telescope buffers<CR>", "List buffers")
keymap_with_desc("n", "<leader>n", ":Telescope notify<CR>", "Show notifications")
keymap_with_desc("n", "<leader>td", ":TodoTelescope<CR>", "Show todos")
keymap_with_desc("n", "<leader>i", ":Telescope import<CR>", "Select imports")

-- Trouble
keymap_with_desc("n", "<leader>xd", ":Trouble diagnostics toggle<CR>", "Toggle diagnostics")
keymap_with_desc("n", "<leader>xb", ":Trouble diagnostics toggle filter.buf=0<CR>", "Toggle buffer diagnostics")

-- CodeSnap
keymap_with_desc("x", "<leader>cc", ":CodeSnap<CR>", "Take code screenshot and save it to the clipboard")
keymap_with_desc("x", "<leader>cs", ":CodeSnapSave<CR>", "Take code screenshot and save it to a file")

-- LSP
keymap_with_desc("n", "K", vim.lsp.buf.hover, "Show documentation")
keymap_with_desc("n", "gd", vim.lsp.buf.definition, "Go to definition")
keymap_with_desc({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Show code actions")
keymap_with_desc("n", "<leader>gf", vim.lsp.buf.format, "Format code")

-- Transparent
keymap_with_desc("n", "<leader>tt", ":TransparentToggle<CR>", "Toggle transparency")

-- GitSigns
keymap_with_desc("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", "Preview Git hunk")

-- Git status
keymap_with_desc("n", "<leader>gs", ":Git<CR>", "Open Git status")

-- DiffView
keymap_with_desc("n", "<leader>dv", ":DiffviewOpen<CR>", "Open DiffView")
keymap_with_desc("n", "<leader>dc", ":DiffviewClose<CR>", "Close DiffView")
keymap_with_desc("n", "<leader>df", ":DiffviewFileHistory<CR>", "Open file history")

-- LazyGit
keymap_with_desc("n", "<leader>lg", ":LazyGit<CR>", "Open LazyGit")

-- Outline
keymap_with_desc("n", "<leader>o", ":Outline<CR>", "Toggle Outline")

-- Markdown
keymap_with_desc("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", "Toggle MarkdownPreview")
keymap_with_desc("n", "<leader>rm", ":RenderMarkdown toggle<CR>", "Toggle markdown rendering")

-- BufDelete
keymap_with_desc("n", "<A-w>", function()
  require("bufdelete").bufdelete(0, true)
end, "Delete buffer")

-- Flash
keymap_with_desc({ "n", "x", "o" }, "s", function()
  require("flash").jump()
end, "Flash")

-- Inc Rename
keymap_with_desc("n", "<leader>rn", ":IncRename ", "Inc Rename")

-- Refactoring
keymap_with_desc({"n", "x"}, "<leader>re", function() require('refactoring').select_refactor() end, "Refactor")

-- ToggleTerm
keymap_with_desc("n", "<C-\\>", ":ToggleTerm<CR>", "Open ToggleTerm")
keymap_with_desc("t", "<esc>", [[<C-\><C-n>]], "Exit terminal mode")

-- Kulala
keymap_with_desc("n", "<leader>kn", function() require('kulala').jump_next() end, "Jump to the next request")
keymap_with_desc("n", "<leader>kp", function() require('kulala').jump_prev() end, "Jump to the previous request")
keymap_with_desc("n", "<leader>kr", function() require('kulala').run() end, "Send request")

-- Pantran
keymap_with_desc({"n", "x"}, "<leader>tr", ":Pantran<CR>", "Translate")

-- Gen
keymap_with_desc({"n", "x"}, "<leader>]", ":Gen<CR>", "Open Gen actions")

-- Neotest
keymap_with_desc("n", "<leader>nn", function() require("neotest").run.run() end, "Run the nearest test")
keymap_with_desc("n", "<leader>nl", function() require("neotest").run.run_last() end, "Run the last test")
keymap_with_desc("n", "<leader>nf", function() require("neotest").run.run(vim.fn.expand("%")) end, "Run all tests in the current file")
keymap_with_desc("n", "<leader>ns", function() require("neotest").summary.toggle() end, "Toggle test summary")
keymap_with_desc("n", "<leader>no", function() require("neotest").output_panel.toggle() end, "Toggle output panel")

-- Compiler
keymap_with_desc("n", "<leader>co", ":CompilerOpen<CR>", "Open Compiler")
keymap_with_desc("n", "<leader>ct", ":CompilerToggleResults<CR>", "Toggle Compiler Results")
