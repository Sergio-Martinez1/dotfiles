require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "JK", "<ESC>")
map("i", "ff", "<RIGHT>")
map("n", "<LEADER>q", ":q<ENTER>")
map("n", "<C-w>", ":q<ENTER>")
map("n", "<LEADER>w", ":w<Enter>")
map("n", "<C-\\>",":vsplit<ENTER>")
map("n", "<C-p>", "<Cmd>Telescope find_files<CR>")
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
