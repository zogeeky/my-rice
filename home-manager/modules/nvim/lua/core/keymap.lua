vim.g.mapleader = " "

vim.keymap.set('n', "<leader>q", ":wq<CR>")
vim.keymap.set('n', "<leader>r", ":source %<CR>")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
