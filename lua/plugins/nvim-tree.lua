vim.pack.add({
  { src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

require("nvim-tree").setup({
    view={
      width=32,
      side="left"
    },
  renderer = {
    highlight_git = "name",

    icons = {
      show={
        file=false,
        folder=false,
        folder_arrow=true,
        git=true
      },

      web_devicons = {
        file = {
          enable = true,
        },
      },


      git_placement = "right_align",
      glyphs = {
        default = "", -- Clear or disable default fallback if it duplicates
        git = {
          unstaged = "",
          staged = "S",
          untracked = "U",
          deleted = "",
          renamed = "R",
          ignored = "",
        },
      },
    },
  },
})

local colors = {
  NvimTreeFileDirty   = { fg = "#e5c07b" }, -- unstaged changes (yellow)
  NvimTreeFileStaged  = { fg = "#98c379" }, -- staged (green)
  NvimTreeFileNew     = { fg = "#61afef" }, -- untracked (blue)
  NvimTreeFileDeleted = { fg = "#e06c75" }, -- deleted (red)
  NvimTreeFileRenamed = { fg = "#c678dd" }, -- renamed (purple)
  NvimTreeFileMerge   = { fg = "#d19a66" }, -- merge conflict (orange)
  NvimTreeFileIgnored = { fg = "#5c6370" }, -- ignored (grey)
}

for group, hl in pairs(colors) do
  vim.api.nvim_set_hl(0, group, hl)
end

