local keyset = vim.keymap.set

-- Shortcuts for coc completion
keyset("i", "<tab>", function()
  if vim.fn["coc#pum#visible"]() == 1 then
    return vim.fn["coc#pum#confirm"]()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<tab>', true, true, true), 'n', true)
  end
end, { expr = true, silent = true })

keyset("n", "cd", "<Plug>(coc-definition)", { silent = true })
keyset("n", "cy", "<Plug>(coc-type-definition)", { silent = true })
-- keyset("n", "ci", "<Plug>(coc-implementation)", { silent = true })
keyset("n", "cr", "<Plug>(coc-references)", { silent = true, noremap = true })
keyset("n", "car", "<Plug>(coc-codeaction-selected)<cr>", { silent = true, noremap = true })

keyset({ "i", "n" }, "<C-Space>", "coc#refresh()", { expr = true, silent = true, noremap = true })
keyset("n", "cp", ":call CocAction('format') <cr>", { silent = true, noremap = true })

return {
  'neoclide/coc.nvim',
  branch = 'release',
}
