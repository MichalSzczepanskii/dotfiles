return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("todo-comments").setup({
			keywords = {
				TODO = { icon = " ", color = "warning" },
				Todo = { icon = " ", color = "warning" },
			},
		})
	end,
}
