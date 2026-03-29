return {
	{
		"Ferouk/bearded-nvim",
		name = "bearded",
		priority = 1000,
		build = function()
			-- Generate helptags so :h bearded-theme works
			local doc = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy", "bearded", "doc")
			pcall(vim.cmd, "helptags " .. doc)
		end,
		opts = {},
		-- config = function()
		-- 	-- require("bearded").setup({
		-- 	-- 	flavor = "vivid-black", -- any flavor slug
		-- 	-- 	transparent = true,
		-- 	-- })
		-- 	-- vim.cmd.colorscheme("bearded")
		-- end,
	},
	{
		"iagorrr/noctishc.nvim",
		name = "noctishc",
		priority = 1000,
		opts = {},
	},
	{
		"followLemmi/cyberneon.nvim",
		name = "cyberneon",
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme cyberneon]])
		end,
	},
	{
		"Old-Farmer/noctis-nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"ianklapouch/wildberries.nvim",
		name = "wildberries",
	},
	{
		"uhs-robert/oasis.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		-- config = function()
		-- 	require("oasis").setup() -- (see Configuration below for all customization options)
		-- 	-- vim.cmd.colorscheme("oasis") -- After setup, apply theme (or any style like "oasis-night")
		-- end,
	},
}
