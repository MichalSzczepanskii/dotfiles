return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/neodev.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		local cmp = require("cmp")
		local cmp_lsp = require("cmp_nvim_lsp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities(),
			cmp_lsp.default_capabilities()
		)
		require("neodev").setup({})
		require("mason").setup()

		local function ts_organize_imports()
			local params = {
				command = "_typescript.organizeImports",
				arguments = { vim.api.nvim_buf_get_name(0) },
				title = "",
			}
			vim.lsp.buf.execute_command(params)
		end

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"tsserver",
				"angularls",
				"vimls",
				"tailwindcss",
				"html",
				"cssls",
				"jsonls",
			},
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
						commands = {
							TsOrganizeImports = {
								ts_organize_imports,
								description = "Organize Imports",
							},
						},
					})
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup({
						capabilities = capabilities,
					})
				end,
				["angularls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.angularls.setup({
						capabilities = capabilities,
						root_dir = lspconfig.util.root_pattern("angular.json", "project.json"),
					})
				end,
			},
		})

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<C-s>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "luasnip" }, -- For luasnip users.
				{ name = "nvim_lsp" },
			}, {
				{ name = "buffer" },
			}),
		})

		vim.diagnostic.config({
			update_in_insert = true,
			float = {
				focusable = false,
				border = "rounded",
				source = true,
				header = "",
				prefix = "",
			},
		})

		local organize_imports_augroup = vim.api.nvim_create_augroup("ts_organize_imports", {
			clear = true,
		})

		vim.api.nvim_create_autocmd({
			"BufWritePost",
		}, {
			pattern = "*.ts",
			group = organize_imports_augroup,
			callback = function()
				ts_organize_imports()
			end,
		})

		-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
		-- 	pattern = "*.ts",
		-- 	callback = function()
		-- 		ts_organize_imports()
		-- 	end,
		-- })
	end,
}
