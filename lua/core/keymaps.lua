
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

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    desc = "Find files",
})

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    desc = "Search project text",
})

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    desc = "Find open buffers",
})

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    desc = "Search help",
})
-- Project navigation and search
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", {
    desc = "Recent files",
})

map("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", {
    desc = "Search word under cursor",
})

map("n", "<leader>cd", function()
    vim.cmd("cd " .. vim.fn.getcwd())
    print("Working directory: " .. vim.fn.getcwd())
end, {
    desc = "Show working directory",
})


-- LSP navigation
map("n", "gd", vim.lsp.buf.definition, {
    desc = "Go to definition",
})

map("n", "gr", vim.lsp.buf.references, {
    desc = "Find references",
})

map("n", "K", vim.lsp.buf.hover, {
    desc = "Hover documentation",
})

map("n", "<leader>rn", vim.lsp.buf.rename, {
    desc = "Rename symbol",
})

map("n", "<leader>ca", vim.lsp.buf.code_action, {
    desc = "Code action",
})

map("n", "<leader>d", vim.diagnostic.open_float, {
    desc = "Show diagnostic",
})

-- map("n", "[d", vim.diagnostic.jump, {
--     desc = "Previous diagnostic",
--     buffer = true,
-- })

map("n", "]d", function()
    vim.diagnostic.jump({ count = 1 })
end, {
    desc = "Next diagnostic",
})


map("n", "<leader>gg", "<cmd>terminal lazygit<CR>", {
    desc = "Open LazyGit",
})



map("n", "<leader><Tab>", "<C-^>", {
    desc = "Switch to previous file",
})


map("i", "<C-k>", function()
    vim.lsp.buf.signature_help()
end, {
    desc = "Show function signature",
})
