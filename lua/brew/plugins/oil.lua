-- return {
-- 	"stevearc/oil.nvim",
-- 	lazy = false,
-- 	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
-- 	config = function()
-- 		require("oil").setup({
-- 			default_file_explorer = true, -- start up nvim with oil instead of netrw
-- 			columns = {},
-- 			keymaps = {
-- 				["<C-h>"] = false,
-- 				["<C-c>"] = false, -- prevent from closing Oil as <C-c> is esc key
-- 				["<M-h>"] = "actions.select_split",
-- 				["q"] = "actions.close",
-- 			},
-- 			delete_to_trash = true,
-- 			view_options = {
-- 				show_hidden = true,
-- 			},
-- 			skip_confirm_for_simple_edits = true,
-- 		})
--
-- 		-- opens parent dir over current active window
-- 		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- 		-- open parent dir in float window
-- 		vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
--
-- 		vim.api.nvim_create_autocmd("FileType", {
-- 			pattern = "oil", -- Adjust if Oil uses a specific file type identifier
-- 			callback = function()
-- 				vim.opt_local.cursorline = true
-- 			end,
-- 		})
-- 	end,
-- }

return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		skip_confirm_for_simple_edits = true,
		keymaps = {
			["q"] = "actions.close",
		},
		view_options = {
			show_hidden = true,
		},
		float = {
			-- Padding around the floating window
			padding = 2,
			-- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
			max_width = 0.5,
			max_height = 0.5,
			border = nil,
			win_options = {
				winblend = 0,
			},
			-- optionally override the oil buffers window title with custom function: fun(winid: integer): string
			get_win_title = nil,
			-- preview_split: Split direction: "auto", "left", "right", "above", "below".
			preview_split = "auto",
			-- This is the config that will be passed to nvim_open_win.
			-- Change values here to customize the layout
			override = function(conf)
				return conf
			end,
		},
		-- Configuration for the file preview window
		preview_win = {
			-- Whether the preview window is automatically updated when the cursor is moved
			update_on_cursor_moved = true,
			-- How to open the preview window "load"|"scratch"|"fast_scratch"
			preview_method = "fast_scratch",
			-- A function that returns true to disable preview on a file e.g. to avoid lag
			disable_preview = function(filename)
				return false
			end,
			-- Window-local options to use for preview window buffers
			win_options = {},
		},
	},
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
