
-- Language server configurations

vim.pack.add({
    "https://github.com/neovim/nvim-lspconfig",
})

vim.lsp.config("basedpyright", {
    settings = {
        basedpyright = {
            analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
            },
        },
    },
})

vim.lsp.enable({
    "basedpyright",
    "ts_ls",
})
