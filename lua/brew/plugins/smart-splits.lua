return {
	"mrjones2014/smart-splits.nvim",
	event = "VeryLazy",
	dependencies = {
		"pogyomo/submode.nvim",
	},
	config = function()
		-- vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
		-- vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
		-- vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
		-- vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
		-- moving between splits
		-- vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
		-- vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
		-- vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
		-- vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
		-- vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
		vim.keymap.set("n", "<leader>wsr", ":vsplit<CR>", { desc = "Split Window Right" })
		vim.keymap.set("n", "<leader>wsd", ":split<CR>", { desc = "Split Window Down" })
		-- swapping buffers between windows
		vim.keymap.set("n", "<leader>wh", require("smart-splits").swap_buf_left, { desc = "Move Tab Left" })
		vim.keymap.set("n", "<leader>wj", require("smart-splits").swap_buf_down, { desc = "Move Tab Down" })
		vim.keymap.set("n", "<leader>wk", require("smart-splits").swap_buf_up, { desc = "Move Tab Up" })
		vim.keymap.set("n", "<leader>wl", require("smart-splits").swap_buf_right, { desc = "Move Tab Right" })
		-- Resize
		local submode = require("submode")
		submode.create("WinResize", {
			mode = "n",
			enter = "<leader>wr",
			leave = { "<Esc>", "q", "<C-c>" },
			hook = {
				on_enter = function()
					vim.notify("Use { h, j, k, l } or { <Left>, <Down>, <Up>, <Right> } to resize the window")
				end,
				on_leave = function()
					vim.notify("")
				end,
			},
			default = function(register)
				register("h", require("smart-splits").resize_left, { desc = "Resize left" })
				register("j", require("smart-splits").resize_down, { desc = "Resize down" })
				register("k", require("smart-splits").resize_up, { desc = "Resize up" })
				register("l", require("smart-splits").resize_right, { desc = "Resize right" })
				register("<Left>", require("smart-splits").resize_left, { desc = "Resize left" })
				register("<Down>", require("smart-splits").resize_down, { desc = "Resize down" })
				register("<Up>", require("smart-splits").resize_up, { desc = "Resize up" })
				register("<Right>", require("smart-splits").resize_right, { desc = "Resize right" })
			end,
		})
	end,
}
