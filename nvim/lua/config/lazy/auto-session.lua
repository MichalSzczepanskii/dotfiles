return {
	"rmagatti/auto-session",
	priority = 1000,
	config = function()
		require("auto-session").setup({
			auto_session_suppress_dirs = { "~/", "~/Downloads" },
			auto_restore_enabled = false,
			bypass_session_save_file_types = { "alpha", "", "blank", "noice" },
			close_unsupported_windows = true,
			cwd_change_handling = {
				post_cwd_changed_hook = function()
					require("lualine").refresh()
				end,
			},
			session_lens = {
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
				buftypes_to_ignore = {},
			},
			pre_save_cmds = {
				function()
					local buffers = vim.api.nvim_list_bufs()
					for _, buffer in ipairs(buffers) do
						if vim.api.nvim_buf_get_name(buffer) == "" then
							vim.api.nvim_command("bwipeout! " .. buffer)
						end
					end
				end,
			},
		})
		vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, {
			noremap = true,
		})
	end,
}
