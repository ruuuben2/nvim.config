vim.api.nvim_set_keymap('n', "w", ":lua require('nvim-window').pick() <cr>", { noremap = true, silent = true })

return {
  "yorickpeterse/nvim-window",
  opts = {
    chars = {
      'a', 'd', 's', 'w',
    },
  }
}
