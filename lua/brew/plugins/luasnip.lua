return {
	"L3MON4D3/LuaSnip",
	config = function()
		local luasnip = require("luasnip")
		luasnip.config.setup({})

		-- Load snippets from your ~/.config/nvim/snippets/ directory.
		require("luasnip.loaders.from_vscode").lazy_load({
			paths = { vim.fn.stdpath("config") .. "/snippets" },
		})
	end,
}
