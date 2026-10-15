
local function get_root()
    local buf = vim.api.nvim_buf_get_name(0)
    local path = buf ~= "" and buf or vim.fn.getcwd()

    local git_root = vim.fs.root(path, ".git")
    return git_root or vim.fn.getcwd()
end

vim.api.nvim_create_user_command("ProjectRoot", function()
    local root = get_root()
    vim.cmd.cd(vim.fn.fnameescape(root))
    print("Project root: " .. root)
end, { desc = "Change to project root" })

vim.keymap.set("n", "<leader>p", function()
    local root = get_root()
    vim.cmd.cd(vim.fn.fnameescape(root))
    print("Project root: " .. root)
end, { desc = "Switch to project root" })

