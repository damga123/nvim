vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n","<C-p>", "<cmd>''+p<CR>")

-- vim.keymap.set("n", "<leader>r", require('runner').run)
vim.keymap.set("n", "<leader>fp", function() require'telescope'.extensions.projects.projects{} end)

vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-l>", "<C-W>l")

vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>split<CR>")

vim.keymap.set("x", "<leader>p", "\"_dP")
