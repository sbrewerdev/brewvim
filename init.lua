require("brew.core")
require("brew.lazy")

vim.cmd.colorscheme("bearded-surprising-blueberry")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "<filetype>" },
	callback = function()
		vim.treesitter.start()
	end,
})

-- Define a table of neon rainbow colors for headings with a dark grey background
local headings = {
	H1 = { fg = "#FF073A", bg = "#1E1E1E" }, -- Neon Red on dark grey
	H2 = { fg = "#FF8C00", bg = "#1E1E1E" }, -- Neon Orange on dark grey
	H3 = { fg = "#FFD700", bg = "#1E1E1E" }, -- Neon Yellow on dark grey
	H4 = { fg = "#39FF14", bg = "#1E1E1E" }, -- Neon Green on dark grey
	H5 = { fg = "#00FFFF", bg = "#1E1E1E" }, -- Neon Cyan on dark grey
	H6 = { fg = "#FF00FF", bg = "#1E1E1E" }, -- Neon Magenta on dark grey
}

-- Loop over each headings level to set foreground and background highlights
for level, colors in pairs(headings) do
	vim.api.nvim_set_hl(0, "RenderMarkdown" .. level, { fg = colors.fg, bg = "none", bold = true })
	vim.api.nvim_set_hl(0, "RenderMarkdown" .. level .. "Bg", { bg = colors.bg })
end
