-- This runs after Lazy has registered AstroNvim's plugins. Keep the most
-- frequently used editor shortcuts here so they are available in every file.
local map = vim.keymap.set

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Apple Terminal-safe palette. Retrobox includes explicit cterm foreground
-- and background values; disabling true-colour avoids cyan background blocks.
vim.opt.termguicolors = false
vim.opt.background = "dark"
local theme_file = vim.fn.stdpath "state" .. "/selected-colorscheme"
local ok, saved = pcall(vim.fn.readfile, theme_file)
local saved_theme = ok and saved[1] or nil
if saved_theme and saved_theme ~= "" then
  pcall(vim.cmd.colorscheme, saved_theme)
else
  vim.cmd.colorscheme "retrobox"
end
vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    if vim.g.colors_name and vim.g.colors_name ~= "" then
      vim.fn.mkdir(vim.fn.fnamemodify(theme_file, ":h"), "p")
      vim.fn.writefile({ vim.g.colors_name }, theme_file)
    end
  end,
})

map("n", "<C-p>", "<Cmd>Telescope find_files<CR>", { desc = "Quick open file", silent = true })
map("n", "<C-S-p>", "<Cmd>Telescope commands<CR>", { desc = "Command palette", silent = true })
map("n", "<C-S-f>", "<Cmd>Telescope live_grep<CR>", { desc = "Search in workspace", silent = true })
map("n", "<C-b>", "<Cmd>Neotree toggle<CR>", { desc = "Toggle file explorer", silent = true })
map({ "n", "t" }, "<C-`>", "<Cmd>ToggleTerm<CR>", { desc = "Toggle terminal panel", silent = true })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Leave terminal mode", silent = true })
map("n", "<C-s>", "<Cmd>w<CR>", { desc = "Save file", silent = true })
map("i", "<C-s>", "<Esc><Cmd>w<CR>a", { desc = "Save file", silent = true })
map("i", "<C-`>", "<Esc><Cmd>ToggleTerm<CR>", { desc = "Toggle terminal panel", silent = true })
map("n", "<C-w>", "<Cmd>bdelete<CR>", { desc = "Close editor", silent = true })

-- Terminal-safe alternatives. These work even when Ctrl/Shift key sequences
-- are swallowed by Apple Terminal. Leader is Space.
map("n", "<Leader>e", "<Cmd>Neotree toggle<CR>", { desc = "Toggle file explorer", silent = true })
map("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>", { desc = "Find files", silent = true })
map("n", "<Leader>fw", "<Cmd>Telescope live_grep<CR>", { desc = "Find text in project", silent = true })
map("n", "<Leader>tt", "<Cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle bottom terminal", silent = true })
map("n", "<Leader>tv", "<Cmd>ToggleTerm direction=vertical<CR>", { desc = "Toggle side terminal", silent = true })
map("n", "<Leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal", silent = true })
map("n", "<Leader>t1", "<Cmd>1ToggleTerm direction=horizontal<CR>", { desc = "Terminal 1", silent = true })
map("n", "<Leader>t2", "<Cmd>2ToggleTerm direction=horizontal<CR>", { desc = "Terminal 2", silent = true })
map("n", "<Leader>t3", "<Cmd>3ToggleTerm direction=horizontal<CR>", { desc = "Terminal 3", silent = true })
map("n", "<Leader>sr", "<Cmd>Spectre<CR>", { desc = "Search and replace in project", silent = true })
map("n", "<Leader>sw", "<Cmd>lua require('spectre').open_visual({ select_word = true })<CR>", { desc = "Replace current word", silent = true })
map("v", "<Leader>sr", "<Esc><Cmd>lua require('spectre').open_visual()<CR>", { desc = "Replace selection", silent = true })
map("n", "<Leader>uc", "<Cmd>Telescope colorscheme enable_preview=true<CR>", { desc = "Choose colour scheme", silent = true })
map("n", "<Leader>mp", "<Cmd>RenderMarkdown toggle<CR>", { desc = "Toggle Markdown preview", silent = true })
map("n", "<Leader>lc", "<Cmd>VimtexCompile<CR>", { desc = "Compile LaTeX", silent = true })
map("n", "<Leader>lv", "<Cmd>VimtexView<CR>", { desc = "View LaTeX PDF", silent = true })
map("v", "<Leader>y", '"+y', { desc = "Copy selection to system clipboard", silent = true })
map({ "n", "v" }, "<Leader>p", '"+p', { desc = "Paste from system clipboard", silent = true })
