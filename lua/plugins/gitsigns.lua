local keyset = vim.keymap.set

keyset("n", "ga", ":Gitsigns stage_hunk <cr>", { silent = true })
keyset("n", "gb", ":Gitsigns blame_line <cr>", { silent = true })
keyset("n", "gd", ":Gitsigns preview_hunk <cr>", { silent = true })
keyset("n", "gn", ":Gitsigns next_hunk <cr>", { silent = true })
keyset("n", "gp", ":Gitsigns prev_hunk <cr>", { silent = true })

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- UNSTAGED (very bright, high contrast)
    vim.api.nvim_set_hl(0, "GitSignsAdd", {
      fg = "#00FF87", -- neon green / cyan
    })
    vim.api.nvim_set_hl(0, "GitSignsChange", {
      fg = "#00AFFF", -- bright blue
    })
    vim.api.nvim_set_hl(0, "GitSignsDelete", {
      fg = "#FF005F", -- vivid red
    })

    -- STAGED (same hues, dimmer)
    vim.api.nvim_set_hl(0, "GitSignsStagedAdd", {
      fg = "#5FD7AF",
    })
    vim.api.nvim_set_hl(0, "GitSignsStagedChange", {
      fg = "#5FAFFF",
    })
    vim.api.nvim_set_hl(0, "GitSignsStagedDelete", {
      fg = "#FF5F87",
    })

    -- Line numbers (numhl)
    vim.api.nvim_set_hl(0, "GitSignsAddNr", { fg = "#00FF87" })
    vim.api.nvim_set_hl(0, "GitSignsChangeNr", { fg = "#00AFFF" })
    vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { fg = "#FF005F" })
    vim.api.nvim_set_hl(0, "GitSignsStagedAddNr", { fg = "#5FD7AF" })
    vim.api.nvim_set_hl(0, "GitSignsStagedChangeNr", { fg = "#5FAFFF" })
    vim.api.nvim_set_hl(0, "GitSignsStagedDeleteNr", { fg = "#FF5F87" })
  end,
})

return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signcolumn = false,
    numhl        = true, -- Toggle with `:Gitsigns toggle_numhl`
  }
}
