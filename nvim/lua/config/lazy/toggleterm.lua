return {
	"akinsho/toggleterm.nvim",
	opts = {
		open_mapping = [[<c-\>]],
		direction = "horizontal",
		float_opts = {
			border = "double",
			width = 90,
			height = 40,
		},
		size = 20,
		shell = "powershell",
		shade_terminals = false,
		highlights = {
			Normal = {
				guibg = "#282c34",
			},
		},
	},
	config = function(_, opt)
		require("toggleterm").setup(opt)

		function _G.set_terminal_keymaps()
			local opts = { noremap = true }

			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			-- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end
		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		local Terminal = require("toggleterm.terminal").Terminal

		local floatTerminal = Terminal:new({
			direction = "float",
			hidden = true,
			size = 20,
		})

		vim.keymap.set("n", "<M-t>", function()
			local path = vim.fn.expand("%:p:h")
			if path:find("oil", 1, true) == nil and path:find("term", 1, true) == nil then
				floatTerminal.dir = vim.fn.expand("%:p:h")
			end
			if not floatTerminal:is_open() then
				floatTerminal:open()
			else
				floatTerminal:shutdown()
			end
		end)

		vim.keymap.set("t", "<M-t>", function()
			floatTerminal:shutdown()
		end)
	end,
}
