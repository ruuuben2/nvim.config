vim.api.nvim_set_keymap('n', "w", ":lua require('nvim-window').pick() <cr>", { noremap = true })

return {
  "yorickpeterse/nvim-window",
  opts = {
    chars = {
      'a', 'd', 's', 'w',
    },
  }
}
