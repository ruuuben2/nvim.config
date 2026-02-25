-- ~/.config/nvim/lua/plugins/git.lua

return {
  {
    "sindrets/diffview.nvim",
    lazy = true,
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = {
          layout = "diff2_horizontal", -- side-by-side
          winbar_info = true,
        },
        file_history = {
          layout = "diff2_horizontal",
        },
      },
    },
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
    },
    opts = {
      integrations = {
        diffview = true, -- pressing <Enter> on a file opens diffview automatically
        telescope = true,
      },
      commit_editor = {
        kind = "floating",
        show_staged_diff = false, -- diffview handles this
      },
      signs = {
        hunk    = { "", "" },
        item    = { "", "" },
        section = { "", "" },
      },
      sections = {
        staged_changes   = { folded = false, hidden = false },
        unstaged_changes = { folded = false, hidden = false },
        untracked_files  = { folded = true, hidden = false },
        stashes          = { folded = true, hidden = false },
        recent_commits   = { folded = true, hidden = false },
      },
    },
  },
}
