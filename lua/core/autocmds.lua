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


-- Automatically show function signature while typing
vim.api.nvim_create_autocmd("InsertCharPre", {
    callback = function()
        local char = vim.v.char

        if char == "(" or char == "," then
            vim.schedule(function()
                vim.lsp.buf.signature_help()
            end)
        end
    end,
})

