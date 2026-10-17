vim.pack.add({
  { src = "https://github.com/uZer/pywal16.nvim" },
})

vim.env.PYWAL_CACHE_DIR = vim.fn.expand("~/.cache/wal")

require("pywal16").setup()
vim.cmd("colorscheme pywal16")

local colors = require("pywal16.core").get_colors()
vim.api.nvim_set_hl(0, "Normal", { fg = colors.foreground, bg = colors.background })
vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.foreground, bg = colors.background })

vim.api.nvim_create_user_command("ReloadWal", function()
    package.loaded["pywal16"] = nil
    require("pywal16").setup()
end, {})
