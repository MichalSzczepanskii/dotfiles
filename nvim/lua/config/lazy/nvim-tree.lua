return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local function on_attach_change(bufnr)
				local api = require("nvim-tree.api")

				api.config.mappings.default_on_attach(bufnr)
				vim.keymap.set("n", "<a-1>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
				vim.keymap.set("n", "<leader>s", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
			end

			require("nvim-tree").setup({
				on_attach = on_attach_change,
				actions = {
					open_file = {
						quit_on_open = true,
					},
				},
			})
		end,
	},
}
