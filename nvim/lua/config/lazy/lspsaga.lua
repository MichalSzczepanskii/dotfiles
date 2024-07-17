return {
	"nvimdev/lspsaga.nvim",
	after = "nvim-lspconfig",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lspsaga").setup({})
	end,
}
