require("config.lazy")

vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Show line numbers
vim.opt.number = true

-- Allow arrow keys to change line
vim.opt.whichwrap = '<,>,[,]'

-- Use shift and arrow keys to jump the cursor
vim.keymap.set({ "n", "v" }, "<S-Up>", "5k", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<S-Down>", "5j", { noremap = true, silent = true })

vim.wo.signcolumn = "yes:1"

vim.o.termguicolors = true
