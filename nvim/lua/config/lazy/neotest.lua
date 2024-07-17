return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-jest",
		},
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			print("configuring neotest")
			local neotest = require("neotest")
			neotest.setup({
				adapters = {
					require("neotest-jest")({
						cwd = function(path)
							return vim.fn.getcwd()
						end,
						jestConfigFile = function(file)
							print("condition")
							print(string.find(file, "/apps/"))
							print(file)
							if string.find(file, "/apps/") then
								print("if")
								print(string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts")
								return string.match(file, "(.-/[^/]+/)src") .. "jest.config.ts"
							end
							print("getcwd")
							print(vim.fn.getcwd() .. "/jest.config.ts")
							return vim.fn.getcwd() .. "/jest.config.ts"
						end,
					}),
				},
			})

			vim.keymap.set("n", "<leader>trt", function()
				neotest.run.run()
			end)
		end,
	},
}
