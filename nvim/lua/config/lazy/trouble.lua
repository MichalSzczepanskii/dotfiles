return {
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({})

			vim.keymap.set("n", "<leader>tt", function()
				require("trouble").toggle({ mode = "diagnostics" })
			end, { desc = "Toggle trouble diagnostics" })
		end,
	},
}
