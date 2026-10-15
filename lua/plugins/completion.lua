
-- Autocomplete
vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = "v1" },
})

require("blink.cmp").setup({
    keymap = {
        preset = "default",
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = {
            "snippet_forward",
            "select_next",
            "fallback",
        },
        ["<S-Tab>"] = {
            "snippet_backward",
            "select_prev",
            "fallback",
        },
    },
    snippets = {
        preset = "luasnip",
    },
    completion = {
        documentation = {
            auto_show = true,
        },
    },

    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = {
        implementation = "prefer_rust_with_warning",
    },
})


