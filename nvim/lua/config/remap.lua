vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true, desc = "Save file" })
vim.keymap.set("n", "<leader>W", ":wa<CR>", { silent = true, desc = "Save all files" })
vim.keymap.set("n", "<C-H>", "<C-w>h", { desc = "Change window (Left)" })
vim.keymap.set("n", "<C-L>", "<C-w>l", { desc = "Change window (Right)" })
vim.keymap.set("n", "<C-J>", "<C-w>j", { desc = "Change window (Down)" })
vim.keymap.set("n", "<C-K>", "<C-w>k", { desc = "Change window (Up)" })
vim.keymap.set("n", "<tab>", ":bnext<CR>", { desc = "Switch to next buffer" })
vim.keymap.set("n", "<s-tab>", ":bprevious<CR>", { desc = "Switch to previous buffer" })
-- vim.keymap.set("n", "<C-I>", ":noh<CR>", { silent = true, desc = "Cloar search result", noremap = true })
