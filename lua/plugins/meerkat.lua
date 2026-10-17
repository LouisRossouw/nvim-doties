vim.pack.add { "https://github.com/LouisRossouw/meerkat.nvim" }


require("meerkat").setup {
  sources = {
    { name = "Personal", path = vim.fn.stdpath("config") .. "/workflows" },
    -- e.g. { name = "Shared", path = "Z:/workflows" },
  },
  default_source = "Personal",
}
