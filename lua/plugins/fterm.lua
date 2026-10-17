vim.pack.add({
  { src = "https://github.com/numToStr/FTerm.nvim" },
})

require("FTerm").setup({
  cmd = function()
    if vim.fn.has("win32") == 1 then
      return "powershell.exe"
    end
    return vim.o.shell
  end,
})

vim.keymap.set("n", "<A-t>", function() require("FTerm").toggle() end, { desc = "Toggle floating terminal" })
vim.keymap.set("t", "<A-t>", function() require("FTerm").toggle() end, { desc = "Toggle floating terminal" })
