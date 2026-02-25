local builtin = require('telescope.builtin')
vim.keymap.set('n', 'tf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', 'tg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', 'tb', builtin.current_buffer_fuzzy_find, { desc = 'Telescope buffers' })
vim.keymap.set('n', 'th', builtin.help_tags, { desc = 'Telescope help tags' })

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sharkdp/fd',
    -- optional but recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  opts = {
    defaults = {
      previewer = true,
      preview = {
        highlight = true, -- ensure this is not false
        treesitter = true, -- use treesitter for syntax in preview
      }
    }
  },
  config = function ()
    -- TODO
  end
}
