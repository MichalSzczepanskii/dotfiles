return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.8",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					file_ignore_patterns = {
						"node_modules",
						".angular",
						"dist",
						"build",
					},
					hidden = true,
				},
			},
		})
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>N", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>e", builtin.buffers, { desc = "Find open buffers" })
		vim.keymap.set("n", "<leader>vh", builtin.help_tags, { desc = "Help tags" })
		vim.keymap.set("n", "<leader>F", builtin.live_grep, { desc = "Find in files" })
		vim.keymap.set("n", ";e", builtin.diagnostics, { desc = "Find in errors" })
		vim.keymap.set("n", "<M-0>", builtin.git_status, { desc = "Find in changed files (Git)" })
		vim.keymap.set("n", "<leader>?", builtin.keymaps, { desc = "Find in keymaps" })
	end,
}
