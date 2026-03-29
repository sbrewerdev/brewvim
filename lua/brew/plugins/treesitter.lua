return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"lua",
			"markdown",
			"markdown_inline",
			"bash",
			"vim",
			"vimdoc",
			"hyprlang",
			"html",
			"css",
			"c_sharp",
			"razor",
			"php",
			"python",
		})
	end,
}
