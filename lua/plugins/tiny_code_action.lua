vim.keymap.set({ "n", "x" }, "ca", function()
  print(require("tiny-code-action").code_action())
  require("tiny-code-action").code_action()
end, { noremap = true, })

return {
  "rachartier/tiny-code-action.nvim",
  enabled = false,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
  },
  event = "LspAttach",
  opts = {
    backend = "vim",
    picker = "telescope"
  },
}
