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
vim.cmd.colorscheme "retrobox"

map("n", "<C-p>", "<Cmd>Telescope find_files<CR>", { desc = "Quick open file", silent = true })
map("n", "<C-S-p>", "<Cmd>Telescope commands<CR>", { desc = "Command palette", silent = true })
map("n", "<C-S-f>", "<Cmd>Telescope live_grep<CR>", { desc = "Search in workspace", silent = true })
map("n", "<C-b>", "<Cmd>Neotree toggle<CR>", { desc = "Toggle file explorer", silent = true })
map({ "n", "t" }, "<C-`>", "<Cmd>ToggleTerm<CR>", { desc = "Toggle terminal panel", silent = true })
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
map("v", "<Leader>y", '"+y', { desc = "Copy selection to system clipboard", silent = true })
map({ "n", "v" }, "<Leader>p", '"+p', { desc = "Paste from system clipboard", silent = true })
