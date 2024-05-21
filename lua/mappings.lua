vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Jump left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Jump right" })
vim.keymap.set("n", "<C-j>", "<C-w>k", { desc = "Jump up" })
vim.keymap.set("n", "<C-k>", "<C-w>j", { desc = "Jump down" })

vim.keymap.set("n", "j", "k", { desc = "Up" })
vim.keymap.set("n", "k", "j", { desc = "Down" })

vim.keymap.set("v", "j", "k", { desc = "Up" })
vim.keymap.set("v", "k", "j", { desc = "Down" })

vim.keymap.set("o", "j", "k", { desc = "Up" })
vim.keymap.set("o", "k", "j", { desc = "Down" })
