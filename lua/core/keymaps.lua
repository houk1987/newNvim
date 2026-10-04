vim.g.mapleader = " "

local map = vim.keymap.set

map("i", "jk", "<esc>")
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>n", "<cmd>bnext<cr>")
map("n", "<leader>e", "<cmd>NvimTreeOpen<cr>")
