require("config.lazy")

vim.api.mapleader = " "

vim.api.nvim_set_option("clipboard", "unnamedplus")
-- vim.keymap.set("n", "<tab>", "za", { noremap = true })


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

vim.keymap.set({ "n" }, "gm", "`", { noremap = true, silent = true })

vim.wo.signcolumn = "yes:1"

vim.o.termguicolors = true

vim.schedule(function()
  vim.cmd.colorscheme("tokyonight-storm")
end)

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = function()
    -- Selected line in results: use Visual highlight (tokyonight's selection blue)
    vim.api.nvim_set_hl(0, 'TelescopeSelection', { link = 'Visual' })
    -- Matched characters in results: use Search or IncSearch for that warm highlight
    vim.api.nvim_set_hl(0, 'TelescopeMatching', { link = 'DiagnosticWarn' })
    -- Highlighted line in preview: link to CursorLine (subtle bg)
    vim.api.nvim_set_hl(0, 'TelescopePreviewLine', { link = 'Visual' })
    -- Matched word in preview: link to Search (tokyonight makes this a nice yellow/orange)
    vim.api.nvim_set_hl(0, 'TelescopePreviewMatch', { link = 'DiagnosticWarn' })
  end,
})
