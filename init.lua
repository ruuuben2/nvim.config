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
