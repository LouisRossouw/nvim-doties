
vim.pack.add({
    "https://github.com/folke/which-key.nvim",
})

require("which-key").setup({
    delay = 300,
})

require("which-key").add({
    { "<leader>f", group = "Find / Search" },
    { "<leader>g", group = "Git" },
    { "<leader>c", group = "Code" },
    { "<leader>r", group = "Rename / Refactor" },
})

