vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })

vim.keymap.set("n", "<CR>", "actions.select", { desc = "Open" })
vim.keymap.set("n", "<C-v>", "actions.select vertical=true", { desc = "Vertical split" })
vim.keymap.set("n", "<C-x>", "actions.select horizontal=true", { desc = "Horizontal split" })
vim.keymap.set("n", "<C-t>", "actions.select tab=true", { desc = "Tab" })

vim.keymap.set("n", "p", "actions.preview", { desc = "Preview" })
vim.keymap.set("n", "q", "actions.close", { desc = "Close" })
