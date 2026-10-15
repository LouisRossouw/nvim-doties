
-- Install and load plugins
vim.pack.add({
    "https://github.com/catppuccin/nvim",
})


require("catppuccin").setup({
    flavour = "mocha",
})

vim.cmd.colorscheme("catppuccin")

require("plugins.oil")


require("plugins.lsp")

require("plugins.completion")


require("plugins.git")

require("plugins.which-key")
