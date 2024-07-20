require("config.set")
require("config.lazy_init")
require("config.remap")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local ConfigGroup = augroup("Config", {})

local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 100,
		})
	end,
})

local function spread(template)
	local result = {}
	for key, value in pairs(template) do
		result[key] = value
	end

	return function(table)
		for key, value in pairs(table) do
			result[key] = value
		end
		return result
	end
end

autocmd("LspAttach", {
	group = ConfigGroup,
	callback = function(e)
		local opts = { buffer = e.buf, noremap = true, silent = true }
		vim.keymap.set("n", "<C-j>", ":Lspsaga diagnostic_jump_next<CR>", spread(opts)({ desc = "Jump to next error" }))
		vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>", spread(opts)({ desc = "Show documentation" }))
		vim.keymap.set("n", "gd", ":Lspsaga finder<CR>", spread(opts)({ desc = "Show definition" }))
		vim.keymap.set("n", "<leader>a", "<cmd>Lspsaga code_action<CR>", spread(opts)({ desc = "Code action" }))
		vim.keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>", spread(opts)({ desc = "Peek definition" }))
		vim.keymap.set("n", "<leader>r", "<cmd>Lspsaga rename<CR>", spread(opts)({ desc = "Rename in code" }))

		vim.keymap.set("n", "<leader>A", function()
			require("telescope.builtin").lsp_dynamic_workspace_symbols()
		end, spread(opts)({ desc = "Workspace symbols" }))

		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, spread(opts)({ desc = "Show signature help" }))
	end,
})
