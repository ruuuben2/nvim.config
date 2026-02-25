vim.api.nvim_set_hl(0, 'MarkSignNumHL', { link = 'LineNr' })

return {
	"chentoast/marks.nvim",
	enabled = false,
	event = "VeryLazy",
	opts = {},
}
