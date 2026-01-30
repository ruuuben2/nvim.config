vim.keymap.set("n", "ff", ":lua MiniFiles.open(vim.api.nvim_buf_get_name(0), true) <cr>")

-- Function to check if the current buffer is a MiniFiles buffer
local function is_minifiles_buffer()
  return vim.bo.filetype == 'minifiles'
end

-- Function to handle 'go_in' logic
function mini_go_in()
  if is_minifiles_buffer() then
    -- Go in if we're in a MiniFiles buffer
    vim.cmd("lua MiniFiles.go_in()")
  else
    -- Otherwise, perform default action for the right arrow key
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Right>', true, true, true), 'n', true)
  end
end

-- Function to handle 'go_out' logic
function mini_go_out()
  if is_minifiles_buffer() then
    -- Go out if we're in a MiniFiles buffer
    vim.cmd("lua MiniFiles.go_out()")
  else
    -- Otherwise, perform default action for the left arrow key
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Left>', true, true, true), 'n', true)
  end
end

-- Key mappings
vim.api.nvim_set_keymap('n', "<Right>", ":lua mini_go_in() <cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Enter>", ":lua mini_go_in() <cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', ":lua mini_go_out() <cr>", { noremap = true, silent = true })

return { 'nvim-mini/mini.files', version = false }
