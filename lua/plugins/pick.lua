return {
	"nvim-mini/mini.nvim",
	keys = {
		{
			"<leader>f",
			function()
				require("mini.pick").builtin.files()
			end,
		},
		{
			"<leader>fh",
			function()
				require("mini.pick").builtin.help()
			end,
		},
	},
	config = function()
		require("mini.pick").setup()
	end,
}
