local opts = { noremap = true, silent = true }

local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Insert Mode Keybinds
map("i", "jk", "<ESC>l")

-- Visual Mode Keybinds
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moves lines down in visual selection" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moves lines up in visual selection" })

-- Normal Mode Keybinds
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Open Oil File Explorer
map("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil File Explorer" })
map("n", "<leader>-", "<CMD>Oil --float<CR>", { desc = "Toggle Oil File Explorer" })

-- Map to next buffer (e.g., Shift-L)
map("n", "L", "<Cmd>bnext<CR>", { desc = "Next buffer" })
-- Map to previous buffer (e.g., Shift-H)
map("n", "H", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })
