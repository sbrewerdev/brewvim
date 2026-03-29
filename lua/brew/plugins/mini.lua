return {
	"echasnovski/mini.nvim",
	version = false, -- Use 'false' for latest features or '*' for stable
	config = function()
		require("mini.ai").setup()
		local hipatterns = require("mini.hipatterns")
		hipatterns.setup({
			highlighters = {
				fixme = { pattern = "FIXME", group = "MiniHipatternsFixme" },
				hack = { pattern = "HACK", group = "MiniHipatternsHack" },
				todo = { pattern = "TODO", group = "MiniHipatternsTodo" },
				note = { pattern = "NOTE", group = "MiniHipatternsNote" },
				-- Highlight hex color strings (#rrggbb) using that color
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		})
		require("mini.icons").setup()
		require("mini.notify").setup()
		require("mini.pairs").setup()
		require("mini.statusline").setup()
		require("mini.surround").setup()
		require("mini.tabline").setup()
	end,
}
