return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlightning = { "markdown" },
			},
			indent = { enable = true },
			ensure_installed = {
				"vimdoc",
				"javascript",
				"typescript",
				"lua",
				"angular",
				"html",
				"json",
				"css",
				"regex",
				"yaml",
				"toml",
			},
			sync_install = false,
			ignore_install = { "c" },
			auto_install = true,
			modules = {},
		})

		vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
			pattern = { "*.component.html" },
			callback = function()
				vim.treesitter.start(nil, "angular")
			end,
		})

		vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
			pattern = { "*.toml" },
			callback = function()
				vim.treesitter.start(nil, "toml")
			end,
		})
	end,
}
