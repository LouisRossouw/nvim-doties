
vim.pack.add({
    "https://github.com/stevearc/oil.nvim",
})

require("oil").setup({
    default_file_explorer = true,

    view_options = {
        show_hidden = true,
    },

    keymaps = {
        ["<C-h>"] = false,
        ["<C-l>"] = false,
    },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", {
    desc = "Open parent directory",
})
