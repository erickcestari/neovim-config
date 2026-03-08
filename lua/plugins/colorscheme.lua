return {
	"vague-theme/vague.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("vague").setup({
			style = {
				comments = "none",
				keywords = "none",
				functions = "none",
				strings = "none",
				variables = "none",
			},
		})
		vim.cmd("colorscheme vague")
	end,
}
