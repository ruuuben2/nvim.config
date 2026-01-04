return {
  'nvim-treesitter/nvim-treesitter',
  opts = {
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    ensure_installed = { 'javascript', 'typescript', 'json', 'lua' },
	  matchup = {
		  enable = true
	  },
	  context_commentstring = {
		  enable = true,
	  },
	  highlight = {
		  enable = true
	  },
	  indent = {
		  enable = true
	  },
	  autotag = {
		  enable = true
	  },
  }
}
