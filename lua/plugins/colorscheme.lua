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
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	end,
}
