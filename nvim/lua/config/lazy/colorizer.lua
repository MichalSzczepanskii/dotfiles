return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			"html",
			"javascript",
			"typescript",
			css = { mode = "background" },
			scss = { mode = "background" },
		}, { mode = "foreground" })
	end,
}
