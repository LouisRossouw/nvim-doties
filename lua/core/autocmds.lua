local autocmd = vim.api.nvim_create_autocmd

-- Highlight text briefly after yanking
autocmd("TextYankPost", {
    desc = "Highlight yanked text",
    group = vim.api.nvim_create_augroup("user-yank-highlight", {
        clear = true,
    }),
    callback = function()
        vim.highlight.on_yank()
    end,
})