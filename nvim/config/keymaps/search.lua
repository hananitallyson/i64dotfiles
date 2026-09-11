local telescope = require("telescope.builtin")

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fa", function() telescope.find_files({ follow = true, no_ignore = true, hidden = true }) end, { desc = "Find all files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Find help" })
vim.keymap.set("n", "<leader>fr", telescope.oldfiles, { desc = "Find recent files" })
vim.keymap.set("n", "<leader>fc", telescope.git_commits, { desc = "Find commits" })
vim.keymap.set("n", "<leader>fs", telescope.git_status, { desc = "Git status" })
vim.keymap.set("n", "<leader>fd", telescope.diagnostics, { desc = "Find diagnostics" })
vim.keymap.set("n", "<leader>fk", telescope.keymaps, { desc = "Find keymaps" })
