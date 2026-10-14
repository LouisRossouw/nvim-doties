
-- Set the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- General
map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
    desc = "Clear search highlights",
})

-- Save and quit
map("n", "<leader>w", "<cmd>write<CR>", {
    desc = "Save file",
})

map("n", "<leader>q", "<cmd>quit<CR>", {
    desc = "Quit window",
})

map("n", "<leader>x", "<cmd>xit<CR>", {
    desc = "Save and quit",
})

-- Window navigation
map("n", "<C-h>", "<C-w>h", {
    desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
    desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
    desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
    desc = "Move to right window",
})

-- Move selected lines up and down
map("v", "J", ":m '>+1<CR>gv=gv", {
    desc = "Move selection down",
})

map("v", "K", ":m '<-2<CR>gv=gv", {
    desc = "Move selection up",
})
