vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})
