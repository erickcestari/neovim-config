return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
    },
    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
